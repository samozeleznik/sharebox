Sharebox::Application.routes.draw do

  resources :assets

  devise_for :users  do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  #this route is for file downloads
  match "assets/get/:id" => "assets#get", :as => "download"

  root :to => "home#index"


end