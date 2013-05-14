class DecksController < ApplicationController
  def index
    @decks = Deck.all
  end

  def show
    @deck = Deck.find(params[:id])
  end

  def new
    @deck = Deck.new
  end

  def create
    deck = Deck.create(deck_params)
    redirect_to deck
  end

  def edit
    @deck = Deck.find(params[:id])
  end

  def update
    deck = Deck.find(params[:id])
    deck.update deck_params
    redirect_to deck
  end

  def destroy
    deck = Deck.find(params[:id])
    deck.destroy
    redirect_to decks_path
  end

  private

  def deck_params
    params.require(:deck).permit(:name)
  end
end
