Rails.application.routes.draw do

  ################### Modify Markets information ###############

  get 'markets' => 'markets#index', as: "marketsIndex"

  get 'markets/show/:id' => "markets#show", as: 'showthemarket'

  post 'markets/create' => 'markets#create', as: 'createmarket'

  get 'markets/new' => 'markets#new', as: 'newmarket'

  get 'markets/:id/edit' => 'markets#edit', as: 'editmarket'

  patch 'markets/:id/update' => 'markets#update', as: 'updatemarket'

  delete 'markets/:id/destroy' => 'markets#destroy', as: 'destroymarket'

  ################## Modify vendors information ###################

  post 'markets/createvendor' => 'markets#createvendor', as: 'createvendor'

  get 'markets/newvendor' => 'markets#newvendor', as: 'newvendor'

  get 'markets/:id/editvendor' => 'markets#editvendor', as: 'editvendor'

  patch 'markets/:id/updatevendor' => 'markets#updatevendor', as: 'updatevendor'

  delete 'markets/:id/destroyvendor' => 'markets#destroyvendor', as: 'destroyvendor'

 ############## Modify Products information ####################


  get 'vendors' => 'vendors#index', as:'vendor_index'

  get 'vendors/:id/products/new' => 'vendors#new', as: 'new_product'

  get 'vendors/:id/show' => 'vendors#show', as: 'show_vendor'

  post 'vendors/:id/products/create'  => 'vendors#create', as: 'create_product'

  get 'vendors/:id/edit' => 'vendors#edit', as: 'edit_product'

  patch 'vendors/:id/update' => 'vendors#update', as: 'update_product'

  delete 'vendors/:id/destroy' => 'vendors#destroy', as: 'delete_product'

  get 'vendors/show_product/:id' => 'vendors#show_product', as: 'show_product'

############### Modify Sales Information #####################

  # get 'vendors/show_sale/:id' => 'vendors#show_sale', as: 'showSale'

  get 'vendors/:vendor_id/products/:product_id/new_sale' => 'vendors#new_sale', as: 'new_sale'

  post 'vendors/create_sale'  => 'vendors#create_sale', as: 'create_sale'

############# general_users ###################

  root to: 'general_users#index', as: 'index'

  get 'general_users/sort_by' => 'general_users#sort_by', as: 'sort_by'

  get 'general_users/index' => 'general_users#index'

  get 'general_users/show/:id' => 'general_users#show', as: 'showmarket'

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
