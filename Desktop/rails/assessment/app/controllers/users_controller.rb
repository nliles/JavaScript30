class UsersController < ApplicationController
	def index 
	  redirect_to new_user_path
	end

	def new 
	  @user = User.new
	end 

	def show
	  @user = User.find(params[:id])
	   redirect_to root_url unless authorized?(@user) 
	end

	def create
		@user = User.new(user_params)

		if @user.save 
			login @user
			redirect_to @user 
		else 
			render 'new'
		end
    end

    private
	def user_params
	  params.require(:user).permit(:username, :password)
	end


end


