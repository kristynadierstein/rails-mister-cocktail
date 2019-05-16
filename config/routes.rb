Rails.application.routes.draw do
  get 'coctails/doses'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails do
    resources :doses
  end

  # resources :doses, only: :index do
  #   member do
  #     get 'admin_login'
  #   end
  # end

  resources :ingredients
end
