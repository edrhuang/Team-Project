Rails.application.routes.draw do
  get 'welcome/index'

  root 'welcome#initialize'

  
end
