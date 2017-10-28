Rails.application.routes.draw do
  # トップページ
  root to: 'welcome#index'
  get "hello/index"

  devise_for :users

  resources :dairies
end
