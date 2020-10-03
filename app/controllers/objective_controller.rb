class ObjectiveController < ApplicationController
  def create
    Objective.create(post_params)
    redirect_to user_path
  end

  def new
  end

  private
  def post_params
    params.require(:objective).permit(:aim, :unit)
  end
end
