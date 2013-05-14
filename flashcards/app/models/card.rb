class Card < ActiveRecord::Base
  belongs_to :deck
  validates :front, presence: true
  validates :back, presence: true
end
