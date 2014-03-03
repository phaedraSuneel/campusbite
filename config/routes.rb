Ordering::Application.routes.draw do

  resources :schools do 
    collection do 
      get "search"
    end  
    resources :restaurants   
  end  
  resources :restaurants 
  

  resources :menu do
    resources :menu_categories 
    resources :menu_items
  end

  resources :restaurants
  resources :restaurant_categories
  resources :menu
  resources :menu_categories    
  resources :menu_items

  resources :carts do
    collection do 
      get "add_item"
      get "checkout"
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
      get 'order'
    end
    member do
      get "menu"
    end
  end

  

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
