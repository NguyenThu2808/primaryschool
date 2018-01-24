Rails.application.routes.draw do
  get 'session/new'

  resources :schedules
  resources :educates
  resources :events
  resources :pictures
  resources :albums
  resources :reports
  resources :categories
  resources :users

  resources :albumpros, only: [:show] do 
    resources :albumprodetail1s
  end

  resources :albumevents do 
    resources :albumeventdetails
  end

  resources :albumclubs do 
    resources :albumclubdetails
  end

  resources :news do 
    resources :newdetail1s
  end

  resources :knowledges do 
    resources :knowledgedetails
  end

resources :books do 
    resources :bookdetails
  end



  


  mount Ckeditor::Engine => '/ckeditor'

  get 'homepage/index'
  get 'news/index'
  get 'knowledges/index'
  get 'books/index'
  get 'contacts/index'
  get 'intros/index'
  get 'intros/facilities'
  get 'intros/teachers'
  get 'intros/tasks'
  get 'intros/mission_vision'
  get 'intros/core_values'
  get 'intros/organizational_structure'
  get 'albumpros/index'
  get 'albumevents/index'
  get 'albumclubs/index'
  get 'albumprodetail1s/index'
  get 'newdetail1s/index'
  get 'educatedetail1s/index'
  get 'albumeventdetails/index'
  get 'albumclubdetails/index'
  get 'inforeducates/index'
  get 'trainingregulations/index'
  get 'timetables/index'

  get 'eventdetails/index'
  get 'eventdetail1s/index'
  get 'eventdetail2s/index'

  get 'knowledgedetails/index'

  get '/login', to:'session#new'
  post '/login', to:'session#create'
  delete '/logout', to:'session#destroy'

  get 'session/new'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
