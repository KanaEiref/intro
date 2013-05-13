Flashcards::Application.routes.draw do
  get "/decks" => "decks#index"
  get "/decks/new" => "decks#new"
end
