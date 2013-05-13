class DecksController < ApplicationController
  def index
    @decks = Deck.all
  end

  def new
    @deck = Deck.new
  end

  def create
    Deck.create deck_params
    redirect_to "/decks"
  end

  def show
    @deck = Deck.find(params[:id])
  end

  def edit
    @deck = Deck.find(params[:id])
  end

  def update
    deck = Deck.find(params[:id])
    deck.update deck_params
    redirect_to "/decks"
  end

  private

  def deck_params
    params.require(:deck).permit(:name)
  end
end
