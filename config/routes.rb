Rails.application.routes.draw do
  root 'homepage#index'

  # Users
  post '/users' => 'users#create'

  # Sessions
  get '/authenticated' => 'sessions#authenticated'
  post '/sessions' => 'sessions#create'
  delete '/sessions' => 'sessions#destroy'

  # Tweets
  get '/tweets' => 'tweets#index'
  get '/users/:username/tweets' => 'tweets#index_by_user'
  post '/tweets' => 'tweets#create'
  delete '/tweets/:id' => 'tweets#destroy'
end
