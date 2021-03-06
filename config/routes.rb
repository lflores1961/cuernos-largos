Rails.application.routes.draw do
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  resources :users
  resources :contacts
  get 'static_pages/about', as: 'about-us'
  get 'static_pages/tournaments', as: 'tournaments'
  get 'static_pages/faq', as: 'faqs'
  get 'welcome/start'
  root to: "welcome#start"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
