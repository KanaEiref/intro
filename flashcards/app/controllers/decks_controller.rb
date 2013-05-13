class DecksController < ApplicationController
  def index
  end

  def new
    @deck = Deck.new
  end

  def create
    Deck.create deck_params
    redirect_to "/decks"
  end

  private

  def deck_params
    params.require(:deck).permit(:name)
  end
end
