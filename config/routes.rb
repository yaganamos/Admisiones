Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'appointment/index'

  get 'appointment/new'

  get 'appointment/show'

  devise_for :users



  match '/dashboard/show_pdf', :to => 'dashboard#show_pdf', :via => [:get, :post]
  match '/dashboard/infor', :to => 'dashboard#infor', :via => [:get, :post]
  match '/adate/cita', :to => 'adate#cita', :via => [:get, :post]
  match '/home/show', :to => 'home#show', :via => [:get, :post]
  match '/estudiantes/show', :to => 'estudiantes#show', :via => [:get, :post]
  match '/estudiantes/new', :to => 'estudiantes#new', :via => [:get, :post]
  match '/appointments/index', :to => 'appointments#index', :via => [:get, :post]
  resources :dashboard
  resources :adates
  resources :estudiantes
  resources :admission_requests
  resources :appointments
  resources :appotimes

  resources :admission_requests do
    resources :appointments
  end

  break if ARGV.join.include? 'assets:precompile'
  root to: "home#index"
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
  #   resources :produclts do
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
