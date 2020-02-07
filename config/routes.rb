Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'welcome#index'

  get "/pages/:page" => "pages#show"

  resources :appartments
  resources :propowners
end
