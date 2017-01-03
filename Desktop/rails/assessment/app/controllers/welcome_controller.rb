class WelcomeController < ApplicationController
  def index
  	redirect_to items_index_url
  end
end
