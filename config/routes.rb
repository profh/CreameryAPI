Rails.application.routes.draw do

  get 'stores', to: 'stores#index', as: :stores
  get 'stores/:id', to: 'stores#show', as: :store
  get 'employees', to: 'employees#index', as: :employees
  get 'spotlight/:id', to: 'employees#spotlight', as: :employee
  get 'stores/:id/upcoming', to: 'shifts#upcoming', as: :upcoming_shifts
  get 'shifts/:id', to: 'shifts#show', as: :shift

end
