Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "tasks", to: "tasks#index" # Listing tasks

  # Adding tasks
  get "tasks/new", to: "tasks#new", as: :new_task # Displays form
  post "tasks", to: "tasks#create" # Collects the form data

  get "tasks/:id", to: "tasks#show", as: :task # Details of task
  get "tasks/:id/edit", to: "tasks#edit"
  patch "tasks/:id", to: "tasks#update"
  delete "tasks/:id", to: "tasks#destroy"
end
