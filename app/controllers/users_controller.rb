class UsersController < ApplicationController
  def create
  end

  def show
    user = User.find(params[:id])
  end

  def delete
    redirect_to new_user_session_path
  end
end
