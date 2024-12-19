Rails.application.routes.draw do
  get 'pages/home'
  get "up" => "rails/health#show", as: :rails_health_check

  root to: "pages#home"
end
