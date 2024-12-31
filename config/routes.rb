Rails.application.routes.draw do
  #get "pages/index", to: 'pages#index'
  get "pages/about"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "/technology", to:'pages#technology' #para llamarlo en application por nombre de pagina, hay que sacar el "as:'tec'
  get "/deporte",    to:'pages#deporte', as:'sport' #otra fomar de llamarlo por application es poner la ruta spor_path
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Defines the root path route ("/")
  root "pages#index"
end
