class MicropostsController < ApplicationController
  before_filter :signed_in_user, only: [:create, :destroy]
  before_filter :correct_user,   only: :destroy
  

    
  def create
    @micropost = current_user.microposts.build(params[:micropost])
    if @micropost.save
      redirect_to current_user
    else
      render 'static_pages/help'
    end
  end

  def destroy
    @micropost.destroy
    redirect_to current_user
  end
  
  def increment_counter(ups, id)
       update_counters(id, ups => 1)
  end
  
  private
    
    def correct_user
      @micropost = current_user.microposts.find_by_id(params[:id])
      redirect_to root_path if @micropost.nil?
    end
end