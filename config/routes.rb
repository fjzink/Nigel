Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'resources#index' 
  get '/resources/hashtag/:name', to:'resources#hastags'
  # currently rooting to resources index until we get first half of project complete

  resources :resources
end
