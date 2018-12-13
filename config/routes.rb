Rails.application.routes.draw do

  resources :experiences
  resources :educations
  resources :social_media
  resources :profiles
  resources :resumes
  scope "/api" do
    resources :users, only: [:create]
    post '/login', to: 'auth#create'
    get '/profile', to: 'users#profile'
  end

end
