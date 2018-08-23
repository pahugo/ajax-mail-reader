Rails.application.routes.draw do
  root 'email#index'
  get 'email/show', to: 'email#show_email', as: 'show_email'
  delete 'email/delete', to: 'email#destroy', as: 'destroy_email'
end
