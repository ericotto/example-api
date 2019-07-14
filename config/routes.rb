Rails.application.routes.draw do

  root to: "welcome#index"

  namespace :api, :path => "" do
    namespace :v1 do
      resources :users
    end
  end

end
