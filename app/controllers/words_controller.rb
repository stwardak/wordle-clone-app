class WordsController < ApplicationController
  def show
    @word = Word.find_by(id: params[:id])
    render :show
  end

  def create
    @word = Word.create(
      word: params[:word],
      difficulty_level: params[:difficulty_level],
    )
    render :show
  end
end
