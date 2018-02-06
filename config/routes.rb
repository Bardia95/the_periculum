Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'about', to: 'pages#about'
  get 'terms', to: 'pages#terms'
  get 'privacy', to: 'pages#privacy'

  resources :contacts, only: :create
  resources :podcasts
  resources :books do
    resources :chapters, except: [:index]
  end
  resources :chapters, except: [:index] do
    resources :questions
  end
  resources :questions, except: [:index] do
    resources :comments, module: :questions, except: [:index, :show, :edit]
  end
  resources :users do
    resource :profile
    resources :comments
  end
  get 'contact-us', to: 'contacts#new', as: 'new_contact'
  get 'podcast', to: 'pages#podcast'
  resources :essays do
    resources :comments, module: :essays, shallow: true
  end
end
