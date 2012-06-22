class AchievementsController < ApplicationController
  before_filter :signed_in_user, only: [:create, :destroy]
  before_filter :correct_user,   only: :destroy
  

    
  def create
    @achievement = current_user.achievements.build(params[:achievement])
    if @achievement.save
      redirect_to current_user
    else
      render 'static_pages/help'
    end
  end

  def destroy
    @achievement.destroy
    redirect_to current_user
  end
  
  private
    
    def correct_user
      @achievement = current_user.achievements.find_by_id(params[:id])
      redirect_to root_path if @achievement.nil?
    end
end