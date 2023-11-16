Rails.application.routes.draw do
  devise_for :users

  get '/about', to: 'pages#about'

  post '/gpt_chat', to: 'contents#gpt_chat'

  # tools form actions
  post '/gpt_rewrite', to: 'contents#gpt_rewrite'
  post '/gpt_paragraph', to: 'contents#gpt_paragraph'

  # tools views
  get '/post_tools', to: 'contents#post_tools'
  get '/post_builder', to: 'contents#post_builder'
  get '/content_rewrite', to: 'contents#content_rewrite'
  get '/content_paragraph', to: 'contents#content_paragraph'

  resources :posts
  resources :contents, path: :content do
    collection do
      get 'blog'
      get 'start'
    end
  end

  root to: 'pages#home'
end
