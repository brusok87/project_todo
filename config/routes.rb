Rails.application.routes.draw do
  resources :projects do
    resources :todos do
     # post 'todos', to: 'todos', action: 'create', controller: 'todo'
     # member do
     #   patch :complete
     # end
    end
  end
  post 'todos', to: 'todos', action: 'create', controller: 'todos'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
