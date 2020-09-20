Rails.application.routes.draw do
  root to: 'home#index'

  get 'home/index'

  get 'style/atoms'

  get 'style/molecules'

  get 'style/organisms'

  get 'ideas/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
