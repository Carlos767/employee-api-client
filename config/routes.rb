Rails.application.routes.draw do
  get '/employees' => 'employees#index'
  get '/employees/new' => 'employees#new'
  post '/employees' => 'employees#create'
  get '/employees/:id/edit' => 'employees#edit'
  patch '/employees/:id' => 'employees#update'
  get '/employees/:id' => 'employees#show', as: 'employee'
  delete '/employees/:id' => 'employees#destroy'
end
