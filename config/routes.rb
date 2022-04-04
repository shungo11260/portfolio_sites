Rails.application.routes.draw do
  resources :to_dos
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  scope '/api' do
    get '/to_dos', to: 'to_dos#index', defaults: { format: :json }
    get '/to_dos/:id', to: 'to_dos#show', defaults: { format: :json }
  end
end
