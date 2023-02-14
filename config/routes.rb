Rails.application.routes.draw do
  # Read all
  root to: 'pets#index'
  get '/pets/new', to: 'pets#new', as: :new_pet
  get '/pets', to: 'pets#index', as: :pets
  post '/pets', to: 'pets#create'
  get '/pets/:id', to: 'pets#show', as: :pet
  patch '/pets/:id', to: 'pets#update'
  get '/pets/:id/edit', to: 'pets#edit', as: :edit_pet
end
