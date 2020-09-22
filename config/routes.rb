Rails.application.routes.draw do
  get 'account/ideas'

  root to: 'home#index'

  get 'home/index'

  get 'style/atoms'

  get 'style/molecules'

  get 'style/organisms'

  get 'ideas/index'

  get 'ideas/new'

  post 'ideas/create'

  get 'ideas/:id/edit', to: 'ideas#edit', as: 'edit_idea'

  patch 'ideas/:id', to: 'ideas#update', as: 'idea'

  get 'ideas/:id/showidea', to: 'ideas#showidea', as: 'show_idea'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
