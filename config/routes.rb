Rails.application.routes.draw do
  devise_for :students, :path => '', :path_names => {:login => 'login', :logout => 'logout'}
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'pages#home'
  get '/escola', to: 'pages#about', as: 'about'
  get '/contato', to: 'pages#contact', as: 'contact'
  post '/contato', to: 'pages#create_contact', as: 'create_contact'
  get '/cursos', to: 'courses#index', as: 'courses'
  get '/cursos/:id', to: 'courses#show', as: 'course'
  get '/cursos/:id/inscrever', to: 'courses#subscribe', as: 'course_subscribe'
  get '/noticias', to: 'news#index', as: 'news'
  get '/noticias/:id', to: 'news#show', as: 'new'
  get '/agenda', to: 'events#index', as: 'events'
  get '/agenda/:id', to: 'events#show', as: 'event'
  get '/terapias', to: 'therapies#index', as: 'therapies'
  get '/galeria', to: 'albums#index', as: 'albums'
  get '/galeria/:id', to: 'albums#show', as: 'album'
  get '/area-do-aluno', to: 'students#show', as: 'student'
  get '/area-do-aluno/download/:id', to: 'students#download', as: 'download'
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
