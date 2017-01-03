class User < ApplicationRecord
	has_secure_password
	validates :username, :password, presence: true
	validates :username, uniqueness: true
	validates :password, :length => {:within => 6..20}

	has_many :items
	has_many :bids
	has_many :bidded_items, through: :bids, source: :item

	def items_won
      non_active_items = self.bidded_items.select { |item| item.ends_at < Time.now }
      non_active_items.select { |item| item.winner?(self) }
  end

end



