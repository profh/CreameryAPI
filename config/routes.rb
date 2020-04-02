Rails.application.routes.draw do

  get 'employees', to: 'employees#index', as: :employees
  get 'employees/:id', to: 'employees#show', as: :employee

  get 'stores', to: 'stores#index', as: :stores
  get 'stores/:id', to: 'stores#show', as: :store

  get 'shifts', to: 'shifts#index', as: :shifts
  get 'shifts/:id', to: 'shifts#show', as: :shift

end
