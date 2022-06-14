class ProgressesController < ApplicationController

  def new
    @progress = Progress.new
    @question = Question.first
  end

  def create
    current_game = Gama.find(params[:id])

    progress = current_game.progresses.new(create_params)
    progress.assign_sequence
    progress.save!
  end

  private

  def create_params
    params.require(:progress).premit(:question_id, :answer)
  end

end
