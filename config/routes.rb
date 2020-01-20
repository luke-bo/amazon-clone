Rails.application.routes.draw do
  get 'products/new'
  get 'products/index'
  get 'products/edit'
  get 'products/show'
  get '/', to: 'welcome#home', as: 'home'
  get '/about', to: 'welcome#about', as: 'about'
  get '/contact', to: 'welcome#contact', as: 'contact'
  post '/contact', to: 'welcome#thanks', as: 'thanks'


  get '/products/new', to: 'products#new', as: :new_question
  post '/products', to: 'products#create', as: :questions
  get '/products', to:	'products#index'
  get '/products/:id', to:	'products#show', as: :product
  get '/products/:id/edit', to:	'products#edit', as: :edit_question
  patch '/products/:id', to:	'products#update'
  delete '/products/:id', to:	'products#destroy'

end
