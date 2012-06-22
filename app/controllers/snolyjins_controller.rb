class SnolyjinsController < ApplicationController
  before_filter :signed_in_user, only: [:create, :destroy]
  before_filter :correct_user,   only: :destroy
  

    
  def create
    @snolyjin = current_user.snolyjins.build(params[:snolyjin])
    if @snolyjin.save
      redirect_to current_user
    else
      render 'static_pages/help'
    end
  end

  def destroy
    @snolyjin.destroy
    redirect_to current_user
  end
  
  private
    
    def correct_user
      @snolyjin = current_user.snolyjins.find_by_id(params[:id])
      redirect_to root_path if @snolyjin.nil?
    end
end