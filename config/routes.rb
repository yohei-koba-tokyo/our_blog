Rails.application.routes.draw do
  devise_for :users  #インストールしたgemのdeviseがルーティングしてくれたやつ
  root to: 'posts#index'
  resources :posts, except: :index
  resources :users, only: :show
end
