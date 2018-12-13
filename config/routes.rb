Rails.application.routes.draw do


  scope "/api" do
    resources :users, only: [:create]
    resources :tools
    resources :interpersonals
    resources :others
    resources :skills
    resources :projects
    resources :experiences
    resources :educations
    resources :social_media
    resources :profiles
    resources :resumes
    post '/login', to: 'auth#create'
    get '/profile', to: 'users#profile'
  end

end
