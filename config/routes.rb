Rails.application.routes.draw do
  resources :cohort_instructors
  resources :cohort_students
  resources :grades
  resources :cohorts
  resources :courses
  resources :students
  resources :instructors
  
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
