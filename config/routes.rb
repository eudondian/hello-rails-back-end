Rails.application.routes.draw do
  resources :greetings, only: [:index]
  namespace :api do
    get '/greeting', to: 'greetings#index'
  end
end