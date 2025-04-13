Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  mount ActionCable.server => '/cable'

  resources :users, only: [:show, :edit, :index]
  resources :assistants
  resources :state_auxs, only: [:index, :show, :update, :new, :edit, :destroy ]


   root "assistants#view"

end
