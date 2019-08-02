Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'payment_method_categories#index'
  resources :payment_method_categories

  resources :payment_methods

end
