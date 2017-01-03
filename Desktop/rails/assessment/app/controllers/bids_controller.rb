class BidsController < ApplicationController

	def new
	  @bid = Bid.new
	end

	def create
	  @item = Item.find(params[:item_id])
	  @bid = @item.bids.create(bid_params)
	  if @bid.save
	  	redirect_to item_path(@item)
	  else 
	    flash[:notice] = @bid.errors.full_messages
	    render "items/show"
	   end	  	
	end

	def update
	  @item = Item.find(params[:item_id])
	  @bid = Bid.find_by_user_id_and_item_id(current_user.id, @item.id)
	  if @bid.update(bid_params)
	    redirect_to item_path(@item)
	  else 
	    flash[:notice] = @bid.errors.full_messages
	    render "items/show"
	   end		  
	end

	def destroy 
	  @item = Item.find_by(params[:id])
	  @bid = Bid.find_by_user_id_and_item_id(current_user.id, @item.id)
	  @bid.destroy
	  redirect_to item_path(@item)
	end


	private
    def bid_params
      params.require(:bid).permit(:amount, :user_id)
    end

end
