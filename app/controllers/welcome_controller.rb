class WelcomeController < ApplicationController
  def index
    @roll = params[:roll]
  end
end
