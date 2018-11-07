Rails.application.routes.draw do
  get '' => 'movies#index'
  resources :movies, only: [:index, :show, :new, :create, :destroy]
  get 'admin/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
