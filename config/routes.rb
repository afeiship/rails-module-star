Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  scope :v1, defaults: { format: :json } do
    resource :products do
      member do
        post :collect
        post :uncollect
      end
    end
  end
  get "/products/:id", to: "products#show"
  get "/products", to: "products#index"
  root "products#index"
end
