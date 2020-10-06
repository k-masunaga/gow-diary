class AmountController < ApplicationController
  def new
    @objectives = Objective.all.where(user_id: current_user.id)
    @amount = Amount.new
  end

  def create
    Amount.create(amount_params)
    redirect_to user_path
  end

  private
  def amount_params
    # params.require(:amount).permit(:amount, :objective_id)
    params.require(:amount).permit(:amount).merge(objective_id: @objectives.id)
  end
end
