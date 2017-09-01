Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'resources#index'
  get '/resources/hashtag/:name', to:'resources#hashtags'
  # currently rooting to resources index until we get first half of project complete
  get '/resources/favorite/:name', to:'resources#hashtags'

  resources :resources
  resources :teachers, only: :show
  resources :students, except: :index

  get 'student_login', to: 'sessions#student_login'
  get 'teacher_login', to: 'sessions#teacher_login'

  post 'sessions/teacher', to: 'sessions#teacher_create', as: :authenticate_teacher
  post 'sessions/student', to: 'sessions#student_create', as: :authenticate_student
  delete 'logout', to: 'sessions#destroy'

end
