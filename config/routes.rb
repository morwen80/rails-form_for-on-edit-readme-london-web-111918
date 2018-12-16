Rails.application.routes.draw do
  resources :posts, only: [:index, :show, :new, :create, :edit]

  # if we add :update on the array above, this line can be deleted, since
  # it creates the same thing
  patch 'posts/:id', to: 'posts#update'
end
