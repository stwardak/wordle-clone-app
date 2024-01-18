class GamesController < ApplicationController
  def create 
    @game = Game.new (
      word_id: params[:word_id],
      status: params[:status],
      attempts: params[:attempts]
    )
    @game.save
  end

  def show

  end


  def update
  end

  def destroy
  end

end
