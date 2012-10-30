Cb::Application.routes.draw do
  get '/jobs' => 'Jobs#search', :as => 'search'
  get '/results' => 'Jobs#results', :as => 'results'
  
end
