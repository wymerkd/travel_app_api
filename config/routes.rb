Rails.application.routes.draw do
  resources :items
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :reviews
  #line below might need to be outside of the Rails class 
  post 'authenticate', to: 'authentication#authenticate'

end
