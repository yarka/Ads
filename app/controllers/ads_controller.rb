class AdsController < ApplicationController
  load_and_authorize_resource

  respond_to :html

  def index
    respond_with(@ads = @ads.order("created_at DESC").page(params[:page]).per_page(5))
  end

  def show
    respond_with(@ad)
  end

  def new
    respond_with(@ad = Ad.new)
  end

  def create
    @ad.user = current_user
    if @ad.save 
      flash[:notice] = "Successfully created ad." 
    end
    respond_with(@ad)
  end

  def edit
    respond_with(@ad)
  end

  def update
    if @ad.update_attributes(params[:ad])
      flash[:notice] = "Successfully updated ad." 
    end
    respond_with(@ad)
  end

  def destroy
    flash[:notice] = "Successfully destroyed ad."
    respond_with(@ad.destroy)
  end
end