Rails.application.routes.draw do


  scope "/api" do
    resources :users, only: [:create, :index]
    resources :tools
    resources :interpersonals
    resources :others
    resources :skills
    resources :projects
    resources :experiences
    resources :educations
    resources :social_media
    resources :profiles
    resources :resumes, param: :user_id, param: :id
    post '/login', to: 'auth#create'
    get '/profile', to: 'users#profile'
    get '/userResume', to: 'users#userResume'
  end
end
