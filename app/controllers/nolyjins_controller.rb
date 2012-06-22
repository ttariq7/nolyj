class NolyjinsController < ApplicationController
  before_filter :signed_in_user, only: [:create, :destroy]
  before_filter :correct_user,   only: :destroy
  

    
  def create
    @nolyjin = current_user.nolyjins.build(params[:nolyjin])
    if @nolyjin.save
      redirect_to current_user
    else
      render 'static_pages/help'
    end
  end

  def destroy
    @nolyjin.destroy
    redirect_to current_user
  end
  
  private
    
    def correct_user
      @nolyjin = current_user.nolyjins.find_by_id(params[:id])
      redirect_to root_path if @nolyjin.nil?
    end
end