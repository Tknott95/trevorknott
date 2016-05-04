Rails.application.routes.draw do

 root 'main#index'

  get 'about' => 'main#about'
  get 'contact' => 'main#contact'

end
