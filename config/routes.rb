Rails.application.routes.draw do
  
  root to: "home#index"

  get '/' => 'home#index'
# пустая строка в аргументе это перенаправление по пути по умолчанию для contacts
  resource :contacts, only: [:new, :create], path_names: {:new => ''}
# Вложенный маршрут  
  resources :articles do
  	resources :comments, only: [:create]
  end

# for Hw 38
  resource :terms, only: [:new], path_names: {:new => ''}
  resource :about, only: [:new],controller: :about, path_names: {:new => ''}

# 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
