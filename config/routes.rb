Rails.application.routes.draw do
  root to: "welcome#index"
  mount TechRadar::Engine, at: "/tech-radar", as: :tech_radar

  resources :docs, only: [ :index, :show ]
end
