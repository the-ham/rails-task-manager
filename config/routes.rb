Rails.application.routes.draw do
  get '/tasks', to: 'tasks#all'

  get '/tasks/new', to: 'tasks#new', as: 'new_task'
  post '/tasks', to: 'tasks#create'

  get '/tasks/:id/edit', to: 'tasks#edit'
  patch '/tasks/:id', to: 'tasks#update'

  delete '/tasks/:id', to: 'tasks#destroy'

  get '/tasks/:id', to: 'tasks#show', as: 'task'
end
