Rails.application.routes.draw do
  
  get 'purchase/index'
  get 'purchase/done'
  get 'card/new'
  get 'card/show'
  get 'battle/test'
  devise_for :users, :controllers =>{
    registrations: 'users/registrations',
    sessions: 'users/sessions',
    omniauth_callbacks: 'users/omniauth_callbacks'
  }

  devise_scope :user do
    get 'registrations/index', to:'users/registrations#index'
    get 'registrations/phone', to:'users/registrations#phone'
    get 'registrations/adress', to:'users/registrations#adress'
    get 'registrations/pay', to:'users/registrations#pay'
    get 'registrations/finish', to:'users/registrations#finish'
    
  end

  root to: "products#index"
  resources :products do
    member do
      get :transaction_buy
      get :crente_buy
      post 'pay', to: 'products#pay'
      get 'done', to: 'products#done'
    end
  end
  resources :users do
    member do
      get :user_edit
    end
    collection do
      get :log_out
    end
  end
  resources :adresses
  resources :credits
  resources :categories

  resources :momo

  resources :card, only: [:new, :show] do
    collection do
      post 'show', to: 'card#show'
      post 'pay', to: 'card#pay'
      post 'delete', to: 'card#delete'
      get :add
    end
  end
end
