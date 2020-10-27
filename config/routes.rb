Rails.application.routes.draw do
  get 'posts/new'
  get 'posts/edit'
  devise_for :admins, controllers: {
    sessions:      'admins/sessions',
    passwords:     'admins/passwords',
    registrations: 'admins/registrations'
  }
  devise_for :users, controllers: {
    sessions:      'users/sessions',
    passwords:     'users/passwords',
    registrations: 'users/registrations'
  }
  resources :admins
  resources :users
  resources :posts 
  resources :favorites
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
