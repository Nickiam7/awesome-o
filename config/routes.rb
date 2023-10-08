Rails.application.routes.draw do
  devise_for :users

  get '/about', to: 'pages#about'

  post '/gpt_chat', to: 'contents#gpt_chat'

  resources :contents, path: :content do
    collection do
      get 'blog'
      get 'start'
      get 'auto-awesome'
    end
  end

  root to: 'pages#home'
end
