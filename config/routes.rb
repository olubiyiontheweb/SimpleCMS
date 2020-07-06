Rails.application.routes.draw do


  root 'public#index'
  get '/show/:permalink', :to => 'public#show'
  get 'admin', :to => "access#index"
  
  #get 'demo/index'
  match ':controller(/:action(/:id))', :via => [:get, :post]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end