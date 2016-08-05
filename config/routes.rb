Rails.application.routes.draw do

  devise_for :users,  skip: [ :registrations, :password ],
                      :path => '',
                      :path_names => {:sign_in => 'login', :sign_out => 'logout'}

  # ToDo: change path name to edit_date
  get 'shows/:show_id/dates/edit' => 'showdates#edit', as: :show_date
  patch 'shows/:show_id/dates/update' => 'showdates#update', as: :update_show_date
  get 'shows/:show_id/dates/new' => 'showdates#new', as: :new_show_date
  post 'shows/:show_id/dates/create' => 'showdates#create', as: :create_show_date
  delete 'shows/:show_id/dates/destroy' => 'showdates#destroy', as: :destroy_show_date

  get 'shows/:show_id/prices/edit' => 'show_prices#edit', as: :show_price
  patch 'shows/:show_id/prices/update' => 'show_prices#update', as: :update_show_price
  get 'shows/:show_id/prices/new' => 'show_prices#new', as: :new_show_price
  post 'shows/:show_id/prices/create' => 'show_prices#create', as: :create_show_price
  delete 'shows/:show_id/prices/destroy' => 'show_prices#destroy', as: :destroy_show_price


  # resources :show_prices, path: "/shows/:id/price"


  resources :courses, except: [:show, :new, :create, :destroy]
  resources :co_operations, except: [:show, :new, :create, :destroy]
  resources :abouts, except: [:show, :new, :create, :destroy]
  resources :shows
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'home#index'

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
