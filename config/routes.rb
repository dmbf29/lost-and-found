Rails.application.routes.draw do
  # Read all
  root to: 'pets#index'
  get '/pets/new', to: 'pets#new', as: :new_pet # new_pet_path
  get '/pets', to: 'pets#index', as: :pets  # pets_path
  post '/pets', to: 'pets#create'
  get '/pets/:id', to: 'pets#show', as: :pet # pet_path(@pet)
  patch '/pets/:id', to: 'pets#update'
  get '/pets/:id/edit', to: 'pets#edit', as: :edit_pet # edit_pet(@pet)
end
