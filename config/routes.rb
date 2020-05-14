Rails.application.routes.draw do
  resources :cocktails, :ingredients do
    resources :doses
  end
end
