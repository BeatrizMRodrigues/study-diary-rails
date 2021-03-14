Rails.application.routes.draw do
  #get '/', to: 'home#index' #Classe(Controller) e Metodo(Action)
  root to: 'home#index'

  resources :study_items, only: [:show, :new, :create, :edit, :update] do
    patch 'mark_as_done', on: :member
  end
end
