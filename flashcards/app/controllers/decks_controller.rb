class DecksController < ApplicationController
  before_action :authenticate

  def index
    @decks = current_user.decks
  end

  def show
    @deck = find_deck
  end

  def new
    @deck = current_user.decks.new
  end

  def create
    @deck = current_user.decks.new(deck_params)
    if @deck.save
      redirect_to @deck, notice: "Deck created!"
    else
      render :new
    end
  end

  def edit
    @deck = find_deck
  end

  def update
    deck = find_deck
    deck.update deck_params
    redirect_to deck
  end

  def destroy
    deck = find_deck
    deck.destroy
    redirect_to decks_path
  end

  private

  def find_deck
    current_user.decks.find(params[:id])
  end

  def deck_params
    params.require(:deck).permit(:name)
  end
end
