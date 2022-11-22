Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # Display all tasks
  get 'tasks', to: 'tasks#index'

  # Create task
  get 'tasks/new', to: 'tasks#new'
  post 'tasks', to: 'tasks#create'

  # Edit task
  get 'tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'
  patch 'tasks/:id', to: 'tasks#update'

  # Display one task
  get 'tasks/:id', to: 'tasks#show', as: 'task'

  # Delete task
  delete 'tasks/:id', to: 'tasks#destroy'
end
