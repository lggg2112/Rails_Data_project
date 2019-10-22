# frozen_string_literal: true

Rails.application.routes.draw do
  resources :pages
  get '/static/:permalink', to: 'pages#permalink', as: 'permalink'

  # resources :appointments, only: [:index]

  # resources :authors, only: [:index, :show]

  # resources :publishers, only: [:index, :show]

  # resources :books, only: [:index, :show, :category]

  # resources :employees, only: [:index, :show]

  # get '/houses', to: 'houses#index'
  # get '/houses/:id', to: 'houses#show', id: /\d+/

  get 'appointments/index'
  get '/books', to: 'books#index'
  get '/books/:id', to: 'books#show', id: /\d+/
  get '/publishers', to: 'publishers#index'
  get '/publishers/:id', to: 'publishers#show', id: /\d+/
  get '/authors', to: 'authors#index'
  get '/authors/:id', to: 'authors#show', id: /\d+/
  get '/employees', to: 'employees#index'
  get '/employees/:id', to: 'employees#show', id: /\d+/

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'books#index'
end
