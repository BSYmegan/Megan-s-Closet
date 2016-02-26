Rails.application.routes.draw do




  resources :users
  root 'users#index'



    get 'static_pages/about'

  get 'static_pages/help'
   get 'signup'  => 'users#new'
 get 'about'   => 'static_pages#about'
    get 'help' => 'static_pages#help'
    get    'login'   => 'sessions#new'
      post   'login'   => 'sessions#create'
      delete 'logout'  => 'sessions#destroy'
end
