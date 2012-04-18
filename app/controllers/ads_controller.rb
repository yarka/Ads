class AdsController < ApplicationController

  load_and_authorize_resource

  def index
    @ads = @ads.paginate(:page => params[:page], :per_page => 5)
  end

  def show
  end

  def new
    @ad = Ad.new
  end

  def create
    if @ad.save
      redirect_to @ad, :notice => "Successfully created ad."
    else
      render :action => 'new'
    end
  end

  def edit
  end

  def update
    if @ad.update_attributes(params[:ad])
      redirect_to @ad, :notice  => "Successfully updated ad."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @ad.destroy
    redirect_to ads_url, :notice => "Successfully destroyed ad."
  end
end
