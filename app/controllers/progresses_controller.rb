class ProgressesController < ApplicationController

  def new
    @progress = Progress.new
    current_game = Game.find(params[:game_id])
    @question = Question.next_question(current_game)
  end

  def create
    current_game = Game.find(params[:game_id])

    progress = current_game.progresses.new(create_params)
    progress.assign_sequence
    progress.save!
  end

  private

  def create_params
    params.require(:progress).permit(:question_id, :answer)
  end

end
