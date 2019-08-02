Rails.application.routes.draw do
  root 'posts#index'
  
  get 'posts/index'
  get 'posts/show/:id' => "posts#show", as: "posts_show" ## as: 라우터 헬퍼 이름을 강제적으로 지어냅니다. (as 문법은 라우터 헬퍼 이름이 정의가 안된 경우 사용)
  get 'posts/edit/:id' => "posts#edit", as: "posts_edit"
  get 'posts/new'
  post 'posts/create'
  post 'posts/update/:id' => "posts#update", as: "posts_update"
  delete 'posts/destroy/:id' => "posts#destroy", as: "posts_destroy"
  
  ## Comment를 위한 라우터 중첩 정의
  resources :posts do
    resources :comments
  end
  
  devise_for :users
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
