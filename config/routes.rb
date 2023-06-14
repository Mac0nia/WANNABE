Rails.application.routes.draw do
  devise_for :users do
    get '/users/sig_out' => 'devise/session#destroy'
  end

  root to: "pages#home"
  get '/about', to: 'pages#about'

  resources :artists
  resources :news

end
