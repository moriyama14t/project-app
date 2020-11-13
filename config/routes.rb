Rails.application.routes.draw do
  resources :medicines, {format: 'json'}
end
