class Bid < ApplicationRecord
  belongs_to :user
  belongs_to :item
  validates :amount, presence: true 
  validates_numericality_of :amount, greater_than: 0
  validates_uniqueness_of :user_id, scope: [:item_id], message: "You already bidded!"
end
