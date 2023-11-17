Rails.application.routes.draw do
  devise_for :users

  #static pages
  get '/about', to: 'pages#about'

  # tools form actions
  post '/gpt_chat', to: 'contents#gpt_chat'
  post '/gpt_rewrite', to: 'contents#gpt_rewrite'
  post '/gpt_paragraph', to: 'contents#gpt_paragraph'
  post '/gpt_title', to: 'contents#gpt_title'

  # tools views
  get '/post_tools', to: 'contents#post_tools'
  get '/post_builder', to: 'contents#post_builder'
  get '/content_rewrite', to: 'contents#content_rewrite'
  get '/content_paragraph', to: 'contents#content_paragraph'
  get '/content_title', to: 'contents#content_title'

  resources :posts
  resources :contents, path: :content do
    collection do
      get 'blog'
      get 'start'
    end
  end

  root to: 'pages#home'
end
