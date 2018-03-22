Rails.application.routes.draw do
  devise_for :users, :controllers => { omniauth_callbacks: 'user/omniauth_callbacks'}
  resources :boards
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'

  get '/login' => 'home#login'
  get '/api/getChapter'
end
