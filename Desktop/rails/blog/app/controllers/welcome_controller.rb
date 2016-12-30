class WelcomeController < ApplicationController

  def index
  	redirect_to articles_url
  end

end
