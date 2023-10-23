Rails.application.routes.draw do
  devise_for :users

  get '/about', to: 'pages#about'

  post '/gpt_chat', to: 'contents#gpt_chat'

  # components
  get '/post_builder', to: 'contents#post_builder'

  resources :posts
  resources :contents, path: :content do
    collection do
      get 'blog'
      get 'start'
    end
  end

  root to: 'pages#home'
end
