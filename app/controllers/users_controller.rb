class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    find_user
  end

  def edit
    find_user
  end

  def update
    find_user
    if @user.update(user_params)
      redirect_to user_path(@user), notice: "Info Updated"
    else
      render "edit"
    end
  end

  def destroy
    find_user
    @user.destroy
      redirect_to root_path
  end

  private
  def get_user
    @user = current_user
  end

  def find_user
    @user = User.find_by_id(params[:id])
  end

  def user_params
    params.require(:user).permit(:username, :avatar, :bio, :location, :instrument, :genre, :website)
  end

end
