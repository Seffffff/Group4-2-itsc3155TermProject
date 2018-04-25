Rails.application.routes.draw do
  get 'welcome/index'

  resources :rosters do 
    resources :players do
      get "edit2"
      post "update2"
    end
  end
  resources :ladders
  
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
