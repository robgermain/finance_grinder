Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'payment_method_categories#index'
  resources :payment_method_categories

  get      '/payment_method_categories'            => 'payment_method_categories#index'
  get      '/payment_method_categories/new'        => 'payment_method_categories#new'
  post     '/payment_method_categories'            => 'payment_method_categories#create'
  get      '/payment_method_categories/:id'        => 'payment_method_categories#show'
  get      '/payment_method_categories/:id/edit'   => 'payment_method_categories#edit'
  patch    '/payment_method_categories/:id'        => 'payment_method_categories#update'
  put    '/payment_method_categories/:id'        => 'payment_method_categories#update'
  delete   '/payment_method_categories/:id'        => 'payment_method_categories#destroy'

end
