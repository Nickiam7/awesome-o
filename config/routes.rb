Rails.application.routes.draw do
  devise_for :users

  get '/about', to: 'pages#about'

  post '/gpt_chat', to: 'contents#gpt_chat'
  post '/gpt_rewrite', to: 'contents#gpt_rewrite'

  # tools
  get '/post_tools', to: 'contents#post_tools'
  get '/post_builder', to: 'contents#post_builder'
  get '/content_rewrite', to: 'contents#content_rewrite'

  resources :posts
  resources :contents, path: :content do
    collection do
      get 'blog'
      get 'start'
    end
  end

  root to: 'pages#home'
end
