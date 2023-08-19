Rails.application.routes.draw do
  devise_for :users
  get '/about', to: 'pages#about'


  resources :contents, path: :content do
    collection do
      get 'blog'
      get 'start'
      get 'auto-awesome'
    end
  end
  post '/gpt_chat', to: 'contents#gpt_chat'

  root to: 'pages#home'
end
