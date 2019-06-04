Rails.application.routes.draw do
  resources :bill_payments
  resources :bills
  resources :billing_accounts
  resources :payment_methods
  resources :payment_method_categories
  resources :payment_method_institutions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
