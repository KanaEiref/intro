class CardsController < ApplicationController
  def show
    @deck = find_deck
    @card = find_card(@deck)
  end

  def new
    @deck = find_deck
    @card = Card.new
  end

  def create
    deck = find_deck
    create_card(deck)
    redirect_to deck
  end

  def edit
    @deck = find_deck
    @card = find_card(@deck)
  end

  def update
    deck = find_deck
    card = find_card(deck)
    card.update card_params
    redirect_to deck
  end

  def destroy
    deck = find_deck
    card = find_card(deck)
    card.destroy
    redirect_to deck
  end

  private

  def card_params
    params.require(:card).permit(:front, :back)
  end

  def find_deck
    Deck.find(params[:deck_id])
  end

  def find_card deck
    deck.cards.find(params[:id])
  end

  def create_card deck
    deck.cards.create(card_params)
  end
end
