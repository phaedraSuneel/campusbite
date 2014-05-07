Ordering::Application.routes.draw do

  
  namespace :admin do
    
    get '/admin', to: 'admin#index'


    resources :schools do 
      collection do 
        post "create_building"
      end  
      member do 
        get "new_building"
        get "buildings"
      end
      resources :restaurants do
        member do 
          get 'order'
          get 'order_detail'
        end
      end
    end 

    resources :restaurants do
      member do 
        get 'order'
        get 'order_detail'
        get 'accept_request'
        get 'reject_request'
      end
    end

    resources :menu do
      resources :menu_categories do
        member do
          get 'accept_request'
          get 'reject_request'
        end
      end
      resources :menu_items do
        member do
          get 'accept_request'
          get 'reject_request'
        end
      end
    end
    
    resources :addons do
      collection do 
        get "category_field"
        get "sub_addon_field"
      end
    end  

    resources :restaurant_coupons do
      member do
        get 'accept_request'
        get 'reject_request'
      end
    end
    resources :restaurant_offers do
      member do
        get 'accept_request'
        get 'reject_request'
      end
    end
    resources :restaurant_categories
    resources :cuisines

  end 

  namespace :restaurant do
    
    resources :dashboard do 
      get '/dashboard', to: 'dashboard#index'
      collection do
        get 'contact_admin'
        get 'new_orders'
        get 'confirm_orders'
        get 'all_orders'
        get 'reports'
      end
      member do 
        get 'confirm_order'
        get 'cancel_order'
      end
    end
    resources :settings do
      member do
        get 'edit_category'
        put 'update_category'
        get 'edit_item'
        put 'update_item'
        put 'update_sechedule'
        put 'update_offer'
        put 'update_coupon'
      end
    end
  end

  resources :card

  

  resources :dashboard do 
    collection do
      get 'account'
      get 'restaurant'
      post 'change_user_information'
      post 'change_user_password'
      post 'add_user_address'
      get 'building_field'
      get 'delete_address'
      get 'delete_review'
      get 'delete_card'
      post 'add_user_card'
    end
    member do 
      post "edit_user_address"
      get 'remove_review'
    end
  end
  

    

  resources :schools do 
    collection do 
      get "search"
      post "create_building"
    end  
    member do 
      get "new_building"
      get "buildings"
    end
    resources :restaurants   
  end


  

  resources :restaurants do
    member do 
      get 'add_favorite'
      get 'order'
      get 'order_detail'
      post 'new_review'
      post 'edit_review'
    end
  end 
  
  resources :menu
  resources :menu_categories    
  resources :menu_items do
    collection do 
      get "property_field"
    end  
  end 

  resources :carts do
    collection do 
      get "add_item"
      get "checkout"
      get "create_order"
      get "update_cart_item_quantity"
      get "delete_cart_item"
      get "paypal_order_create"
      get "update_order_type"
      get "process_gether"
      get "voice", :format => "xml"
    end
    member do
      post 'edit_item'
    end
  end  
  # The priority is based upon order of creation:
  # first created -> highest priority.
  devise_for :users , :controllers => { :omniauth_callbacks => "omniauth_callbacks" }
  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action
  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end
  resources :admin do
    collection do
      get 'user'
      post 'create_user'
      get 'new_user'
      get 'role'
      post 'create_role'
      get 'new_role'
      get 'reports'
    end
    member do
      get 'edit_user'
      get 'show_user'
      put 'update_user'
      delete 'destroy_user'
      get 'edit_role'
      get 'show_role'
      put 'update_role'
      delete 'destroy_role'
    end
  end  

  resources :welcome do 
    collection do 
      get 'result'
      get 'restaurant_search'
      get 'aboutus'
      get 'restaurant_owners'
      get 'faqs'
      get 'contact_us'
      get 'add_restaurant'
      get 'add_campus'
      get 'how_it_works'
      get 'contact_us_mail'
      get 'join_us'
      get 'restaurant_suggestion'
      get 'campus_suggestion'
    end
    member do
      get "menu"
      get "order"
    end
  end

  match '/welcome/aboutus' => 'welcome#aboutus', :as => :aboutus 

  match '/welcome/restaurant_owners' => 'welcome#restaurant_owners', :as => :restaurant_owners 
  match '/welcome/faqs' => 'welcome#faqs', :as => :faqs
  match '/welcome/contact_us' => 'welcome#contact_us', :as => :contact_us 
  match '/welcome/contact_us_mail' => 'welcome#contact_us_mail', :as => :contact_us_mail 

  match '/welcome/add_restaurant' => 'welcome#add_restaurant', :as => :add_restaurant 

  match '/welcome/add_campus' => 'welcome#add_campus', :as => :add_campus 
  match '/welcome/how_it_works' => 'welcome#how_it_works', :as => :how_it_works 

  match '/welcome/join_us' => 'welcome#join_us', :as => :join_us 
  match '/welcome/restaurant_suggestion' => 'welcome#restaurant_suggestion', :as => :restaurant_suggestion 
  match '/welcome/campus_suggestion' => 'welcome#campus_suggestion', :as => :campus_suggestion 


  match '/payments/payment', :to => 'payments#payment', :as => 'paymentspayment', :via => [:get]

  match '/payments/relay_response', :to => 'payments#relay_response', :as => 'payments_relay_response', :via => [:post]

  match '/payments/receipt', :to => 'payments#receipt', :as => 'payments_receipt', :via => [:get]

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
