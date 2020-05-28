class UsersController < ApplicationController
  # before_action :redirect_login, except: :index
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  private

  # def redirect_login
  #   redirect_to new_user_session_path unless user_signed_in?
  # end
end
