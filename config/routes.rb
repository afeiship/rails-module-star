Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resource :products do
    member do
      post :collect
      post :uncollect
    end
  end
end
