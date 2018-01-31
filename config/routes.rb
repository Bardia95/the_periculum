Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'about', to: 'pages#about'
  resources :contacts, only: :create
  get 'contact-us', to: 'contacts#new', as: 'new_contact'
  get 'bookclub', to: 'pages#bookclub'
  get 'podcast', to: 'pages#podcast'
  resources :essays do
    resources :comments
  end
  resources :podcasts do
    resources :podcomments
  end

resources :books do
  resources :chapters
end

    resources :chapters do
      resources :sections
    end
  resources :sections do
    resources :bookcomments
  end

end
