Rails.application.routes.draw do
  
  devise_for :users, controllers: {
        registrations: 'users/registrations'
      }

  get 'users/:id', to: 'histories#index_id', as: 'user'
  get 'users', to: 'histories#index_users'
  patch 'admin_update/:id', to: 'histories#admin_update', as: 'admin_update'
  resources :histories

  root "histories#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
