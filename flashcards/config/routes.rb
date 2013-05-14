Flashcards::Application.routes.draw do
  resources :decks do
    resources :cards, except: [:index]
  end
  resources :users, only: [:new, :create]
  resource :session, only: [:new, :create, :destroy]
end
