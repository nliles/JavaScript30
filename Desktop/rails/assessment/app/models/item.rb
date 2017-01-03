class Item < ApplicationRecord
	belongs_to :user
	has_many :bids 
	has_many :bidders, through: :bids, source: :user
	
	validates :starts_at, inclusion: { in: (Date.today..Date.today+1.years) }
	validates :ends_at, inclusion: { in: (Date.today..Date.today+1.years) }
	validate :end_date_after_start_date?

	def end_date_after_start_date?
	  if ends_at < starts_at
	    errors.add :ends_at, "must be after start date"
	  end
	end

	def self.starts 
	  where("starts_at < ?", Time.now.end_of_day)
	end

	def self.ends
	  where("ends_at > ?", Time.now.end_of_day)
	end

	def bidder?(user)
	  self.bids.find_by(user: user)
	end

	def winner?(user)
	   highest_bid = self.bids.maximum(:amount)
	   user.id = highest_bid.user_id
    end

end

