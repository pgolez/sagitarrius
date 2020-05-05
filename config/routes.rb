Rails.application.routes.draw do
  resources :course_classes, only: [:index, :show, :create], path: 'course-classes'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
