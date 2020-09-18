Rails.application.routes.draw do
  #get 'pages/show'
  #get 'pages/new'
  #get 'pages/edit'
  #get 'pages/delete'

  #get 'subjects/show'
  #get 'subjects/new'
  #get 'subjects/edit'
  #get 'subjects/delete'
  
  #root 'subject#index'
  #get 'subject/index'
 # get 'subject/show'
  #get 'subject/new'
  #get 'subject/edit'
  #get 'subject/delete'


  resources :subjects do
    member do
      get:delete
    end
  end

  resources :pages do
    member do
      get:delete
    end
  end

  root 'demo#index'

  get 'demo/index'
  #default route
  get 'demo/hello'

  #get ':controller(/:action(:/id))'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
