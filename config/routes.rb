Rails.application.routes.draw do
  resources :proyectos do
    get :my_proyectos
  end

  resources :users do
    resources :proyectos
  end
  devise_for :users, controllers: {
        sessions: 'users/sessions'
      }
  root 'static_pages#home'
  get '/about',to: "static_pages#about"
  get '/home_signin', to: "static_pages#_home_signin"



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
