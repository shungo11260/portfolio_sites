Rails.application.routes.draw do
  resources :to_dos
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
end
