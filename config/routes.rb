Rails.application.routes.draw do
  get 'dat_hang/index'
  resources :profile, only: [:edit, :update]
  get 'profile/edit'
  get 'profile/index'
  resources :don_dat_hangs
  get 'khach_hang/index'
  get 'nhan_vien/index'
  get 'lien_he/index'
  get 'carts/index'
  resources :gio_hangs
  get 'admin/index'
  get 'sessions/index'
  get 'chi_tiet_sp/index'
  get 'dang_ky/index'
  get 'dang_nhap/index'
  get 'home/index'
  resources :nguoidungs
  resources :phais
  resources :quyens
  resources :san_phams
  resources :kich_thuocs
  resources :danh_mucs

  resources :chi_tiet_sp
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "home#index"

  get 'dang_ky', to: 'dang_ky#index'
  post 'dang_ky', to: 'dang_ky#create'

  post 'login', to: 'sessions#login'
  delete 'logout', to: 'sessions#logout', as: 'logout'
  get 'logout', to: 'sessions#logout'  # Route GET cho logout

  delete 'remove_from_cart/:id', to: 'carts#remove_from_cart', as: 'remove_from_cart'
  post 'update_cart/:id', to: 'carts#update_cart', as: 'update_cart'
  
  resources :chi_tiet_sp, only: [:index] do
    post 'CTS_them_sp', on: :member

    
  end
end
