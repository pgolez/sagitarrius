Rails.application.routes.draw do
  resources :course_classes, only: [:index, :show, :create, :update], path: 'course-classes'
  resources :rooms, only: [:index]
  resources :courses, only: [:index]
  resources :schedules, only: [:index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
