Rails.application.routes.draw do

  resources :posts
  resources :skills
 root 'main#index'

  get 'about' => 'main#about'
  get 'contact' => 'main#contact'

end
