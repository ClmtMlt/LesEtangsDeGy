Rails.application.routes.draw do
  get 'pages/home'
  get '/nous-contacter', to: "pages#contact", as: "contact"
  get '/reserver', to: "pages#booking", as: "booking"
  get '/conditions', to: "pages#conditions", as: "conditions"
  get "up" => "rails/health#show", as: :rails_health_check

  root to: "pages#home"
end
