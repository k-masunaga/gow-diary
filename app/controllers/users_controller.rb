class UsersController < ApplicationController
  def new
    @user = current_user.id
    redirect_to user_path(@user)
  end

  def show
    @user = User.find(params[:id])
  end

  def delete
    redirect_to new_user_session_path
  end
end
