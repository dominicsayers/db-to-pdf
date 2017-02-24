Rails.application.routes.draw do
  resources :players do
    collection do
      get 'report'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
