Rails.application.routes.draw do

  resources :skills
 root 'main#index'

  get 'about' => 'main#about'
  get 'contact' => 'main#contact'

end
