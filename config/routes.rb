Rails.application.routes.draw do
  get 'quizzes/index'
  get 'quizzes/show'
  devise_for :users
  root to: "tops#index"
  get 'tops/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
