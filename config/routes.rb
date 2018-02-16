Rails.application.routes.draw do
  get '/' => 'home#index'
# пустая строка в аргументе это перенаправление по пути по умолчанию для contacts
  resource :contacts, only: [:new, :create], path_names: {:new => ''}
  resources :articles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
