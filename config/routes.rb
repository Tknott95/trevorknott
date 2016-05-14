Rails.application.routes.draw do

  get 'landing/index'

  resources :posts
  resources :skills
 root 'main#index'

  get 'about' => 'main#about'
  get 'contact' => 'main#contact'

  get 'languages' => 'skills#skills'

end
