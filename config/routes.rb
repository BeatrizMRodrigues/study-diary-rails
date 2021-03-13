Rails.application.routes.draw do
  #get '/', to: 'home#index' #Classe(Controller) e Metodo(Action)
  root to: 'home#index'
end
