IdealMe::Application.routes.draw do

 
  root :to => "site#index"
  devise_for :users, :controllers => { :registrations => "registrations" }

  get '/users/:id/dashboard', to: "users#dashboard", as: :user_dashboard

  resources :users do
    resources :ideal_charts
  end

  resources :users do
    resources :real_charts
  end

  match '/real_charts/nil/activities', to: "activities#new", as: :new_nil_activity, via: :get

  post '/real_charts/nil/activities', to: "activities#create", as: :create_nil_activity 

  resources :real_charts, :ideal_charts do 
    resources :activities
  end

end
  
