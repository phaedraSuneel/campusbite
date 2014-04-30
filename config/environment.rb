# Load the rails application
require File.expand_path('../application', __FILE__)
APP_CONFIG = YAML.load_file("#{Rails.root}/config/config.yml")[Rails.env]
# Initialize the rails application
Ordering::Application.initialize!

require 'phaxio'
Phaxio.config do |config|
	config.api_key = APP_CONFIG["api_key"]
	config.api_secret = APP_CONFIG["api_secret"]
end
require 'braintree'

Braintree::Configuration.environment = :sandbox
Braintree::Configuration.merchant_id = APP_CONFIG["merchant-id"]
Braintree::Configuration.public_key = APP_CONFIG["public-key"]
Braintree::Configuration.private_key = APP_CONFIG["private-key"]