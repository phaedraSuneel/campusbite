class Authentication < ActiveRecord::Base
  attr_accessible :provider, :provider_token, :token_expiration_date, :uid, :user_id
  belongs_to :user

  def self.find_for_oauth(auth, signed_in_resource=nil)
   authentication = Authentication.where(:provider => auth.provider, :uid => auth.uid).first
    if authentication
      return authentication.user
    else
      user = User.create(first_name:auth.info.first_name || auth.info.name,
                          last_name: auth.info.last_name,
                          email:auth.info.email || auth.extra.raw_info.screen_name + '@twiiter.com',
                          password:Devise.friendly_token[0,20]
                        )
      authentications = user.authentications.create(provider:auth.provider,
                                    uid:auth.uid,
                                    provider_token:auth.credentials.token,
                                    token_expiration_date:auth['credentials'].expires_at.to_s
                                  )
      return user
    end
  end
end
