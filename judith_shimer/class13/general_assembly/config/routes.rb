Rails.application.routes.draw do
	root "courses#index"
  resources :courses do
    resources :students
  end
end