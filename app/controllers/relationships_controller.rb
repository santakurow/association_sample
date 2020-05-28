class RelationshipsController < ApplicationController
  before_action :set_user

  def create
    following = current_user.follow(@user)
    if following.save
      flash[:notice] = "フォローしました！"
      redirect_to @user
    # else
    #   redirect_to @user
    end
  end

  def destroy
    following = current_user.unfollow(@user)
    flash[:notice] = "フォローを解除しました！"
    redirect_to @user
  end

  private

  def set_user
    @user = User.find(params[:relationship][:follow_id])
  end
end
