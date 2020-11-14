Rails.application.routes.draw do
  resources :medicines, {format: 'json'}

  get "*anything" => "application#rescue_404"
  
end
