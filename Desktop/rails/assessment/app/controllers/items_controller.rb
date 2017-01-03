class ItemsController < ApplicationController
  def index
  	@items = Item.starts.ends
  end

  def show 
  	@item = Item.find(params[:id])
  end 

  def new 
  	@item = Item.new
    redirect_to root_url unless logged_in?
  end

  def edit
    @item = Item.find(params[:id])
    redirect_to root_url unless authorized?(@item.user)
  end

  def create 
    @item = current_user.items.new(item_params)
  	if @item.save 
  		redirect_to current_user
  	else 
  	  render 'new'
  	end
  end

  def update
  	@item = Item.find(params[:id])
    redirect_to root_url unless authorized?(@item.user)
  	if @item.update(item_params)
  		redirect_to current_user
  	else 
  	   render 'edit'
  	end
  end

  def destroy
  	@item = Item.find(params[:id])
    redirect_to root_url unless authorized?(@item.user)
  	@item.destroy
  	redirect_to @item.user
  end

  private
  def item_params
  	params.require(:item).permit(:name, :description, :condition, :starts_at, :ends_at)
  end

end


