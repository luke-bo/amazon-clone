Rails.application.routes.draw do
  get '/', to: 'welcome#home', as: 'home'
  get '/about', to: 'welcome#about', as: 'about'
  get '/contact', to: 'welcome#contact', as: 'contact'
  post '/contact', to: 'welcome#thanks', as: 'thanks'
end
