# frozen_string_literal: true

Rails.application.routes.draw do
  get 'appointments/index'
  get 'books/index'
  get 'books/show'
  get 'publishers/index'
  get 'publishers/show'
  get 'pulishers/index'
  get 'pulishers/show'
  get 'authors/index'
  get 'authors/show'
  get 'employees/index'
  get 'employees/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'books#index'
end
