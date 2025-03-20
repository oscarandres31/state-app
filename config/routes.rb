Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  mount ActionCable.server => '/cable'
 # authenticated :user do
    #root to: 'devise/registrations#edit', as: :authenticated_root  # O a una página de perfil personalizada
  #end

  resources :users, only: [:show, :edit, :index]
  resources :assistants
  resources :state_auxs, only: [:index, :show, :update, :new, :edit, :destroy ]


   root "assistants#view"

end
