Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :students, only: [:index, :create, :update, :show, :destroy] do 
    collection do
      get :students_full_name
    end
  end
end
