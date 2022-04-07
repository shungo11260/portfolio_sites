Rails.application.routes.draw do
  resources :tasks
  resources :lists
  resources :boards

  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  scope '/api' do
    get '/tasks', to: 'tasks#index', defaults: { format: :json }
    get '/tasks/:id', to: 'tasks#show', defaults: { format: :json }
    get '/lists', to: 'lists#index', defaults: { format: :json }
    get '/lists/:id', to: 'lists#show', defaults: { format: :json }
    post '/lists', to: 'lists#create'
    get '/boards', to: 'boards#index', defaults: { format: :json }
    get '/boards/:id', to: 'boards#show', defaults: { format: :json }
  end
end
