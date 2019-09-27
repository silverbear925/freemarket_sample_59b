Rails.application.routes.draw do
  devise_for :users, :controllers =>{
    :registrations => 'users/registrations'
  }

  devise_scope :user do
    get 'registrations/index', to:'users/registrations#index'
    get 'registrations/phone', to:'users/registrations#phone'
    get 'registrations/adress', to:'users/registrations#adress'
    get 'registrations/pay', to:'users/registrations#pay'
    get 'registrations/finish', to:'users/registrations#finish'
    
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "products#index"
  resources :products
  resources :users do
    collection do
      get :log_out
      get :credit_delete
    end
  end
  resources :adresses
  resources :credits

  resources :momo
end
