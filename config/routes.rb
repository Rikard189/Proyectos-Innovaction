Rails.application.routes.draw do
  resources :atributos
  resources :proyectos do
    resources :estudiantes
  end
  devise_for :users
  root 'static_pages#home'
  get '/about',to: "static_pages#about"
  get '/home_signin', to: "static_pages#_home_signin"
  get 'my_proyectos', to: 'proyectos#my_proyectos'




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
