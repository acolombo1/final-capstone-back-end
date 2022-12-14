Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ('/')
  root to: 'home#index'

  devise_for :users,
             path_names: {
               sign_in: 'login',
               sign_out: 'logout',
               registration: 'signup'
             },
             controllers: {
               sessions: 'users/sessions',
               registrations: 'users/registrations'
             }

  get '/users/current', to: 'users#current'
  resources :items, only: %i[index show create destroy]
  resources :reservations, only: %i[create index show]

  post '/items/:id/toggle_active', to: 'items#toggle_active', as: 'toggle_active_item'

  mount Rswag::Api::Engine => '/api-docs'
  mount Rswag::Ui::Engine => '/api-docs'
end
