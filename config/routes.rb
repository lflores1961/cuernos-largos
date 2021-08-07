Rails.application.routes.draw do
  get 'welcome/start'
  root to: "welcome#start"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
