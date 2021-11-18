Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :zoomlogs
  get '/zoomlogs/:id/groups', to: 'zoomlogs#groups'
end
