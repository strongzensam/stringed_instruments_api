Rails.application.routes.draw do
  resources :stringed_instruments
  namespace :api do
    namespace :v1 do
      resources :stringed_instruments
    end
  end
end
