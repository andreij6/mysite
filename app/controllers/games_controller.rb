class GamesController < ApplicationController
  before_action :set_game, only: [:play]
  
  def index
    #create 2 players
  end
  
  def start
    @game = Game.new
  end
  
  def show
    
  end
  
  def create
    @game = Game.new(game_params)
    respond_to do |format|
      if @game.save
        format.html { redirect_to @game, notice: 'Blog was successfully created.' }
      else
        format.html { render action: 'start' }
      end
    end
  end
  
  def play
    
  end
  
  private 
  def set_game
      @game = Game.find(params[:id])
    end
  
  def game_params
      params.require(:game).permit(:p_one, :p_two)
    end
end
