Rails.application.routes.draw do
  get 'pages/home'
  get 'pages/nous-contacter', to: "pages#contact", as: "contact"
  get 'pages/reserver', to: "pages#booking", as: "booking"
  get "up" => "rails/health#show", as: :rails_health_check

  root to: "pages#home"
end
