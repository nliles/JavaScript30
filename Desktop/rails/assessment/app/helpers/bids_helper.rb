module BidsHelper
  def find_bid_amount(user, item)
    @bid = Bid.find_by_user_id_and_item_id(user.id, item.id)
    @bid.amount
  end

  def find_bid_date(user, item)
    @bid = Bid.find_by_user_id_and_item_id(user.id, item.id)
    return @bid.created_at.strftime("%B %d, %Y")
  end

  def find_bid_time(user, item)
    @bid = Bid.find_by_user_id_and_item_id(user.id, item.id)
    return @bid.created_at.strftime("%I:%M%p")
  end

end
