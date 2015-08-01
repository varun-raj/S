class UserController < ApplicationController
  before_action :set_user, only: [:follow]

  def profile
    if params[:id] == current_user.id
      @user = current_user
      @self = true
    else
      @user = User.find(params[:id])
      @self = false
    end
  end

  def follow
    current_user.follow!(@user)
    respond_to do |format|
      format.js
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

end
