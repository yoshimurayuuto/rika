Rails.application.routes.draw do
  root  'users#new'
  resources :feeds do
    collection do
      post :confirm
    end
  end
  resources :sessions, only: [:new, :create, :destroy]
  resources :users
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
  resources :favorites, only: [:create, :destroy, :index]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
