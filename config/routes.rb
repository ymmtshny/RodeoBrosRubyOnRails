Rails.application.routes.draw do
  
  root 'items#index'
  
  get 'images/index'
  get 'related/index'
  get 'persons/index'
  get 'brands/index'
  
  get '/items/new', to: 'items#new', as: 'new_item'
  get '/items/show', to: 'items#show', as: 'show_item'
  get '/items/rakuten/:id', to: 'items#rakuten', as: 'rakuten_item'
  get '/items/yahoo/:id', to: 'items#yahoo', as: 'yahoo_item'
  get '/items/official/:id', to: 'items#official', as: 'official_item'
  
  
  get '/brands/new', to: 'brands#new', as: 'new_brand'
  get '/brands/show', to: 'brands#show', as: 'show_brand'
  
  get '/images/new', to: 'images#new', as: 'new_image'
  get '/images/show', to: 'images#show', as: 'show_image'
  
  get '/people/new', to: 'people#new', as: 'new_person'
  get '/people/show', to: 'people#show', as: 'show_person'
  
  resources :items
  resources :brands
  resources :images
  resources :people
  
  
  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
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

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
