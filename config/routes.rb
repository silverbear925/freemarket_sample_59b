Rails.application.routes.draw do
  get 'purchase/index'
  get 'purchase/done'
  get 'card/new'
  get 'card/show'
  get 'battle/test'
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
  resources :products do
    member do
      get :transaction_buy
    end
    collection do
      patch :crente_buy
    end
  end
  resources :users do
    collection do
      get :log_out
      # get :credit_delete
      get :credit_add
      # get :credit_create
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
    end
  end

  resources :purchase, only: [:index] do
    collection do
      get 'index', to: 'purchase#index'
      post 'pay', to: 'purchase#pay'
      get 'done', to: 'purchase#done'
    end
  end
end
