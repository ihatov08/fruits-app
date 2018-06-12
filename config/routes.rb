Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :fruits, only: %i[index create destroy update]
    end
  end
end
