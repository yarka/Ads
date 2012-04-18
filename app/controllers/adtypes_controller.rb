class AdtypesController < ApplicationController

  load_and_authorize_resource
  
  def index
  end

  def show
  end

  def new
    @adtype = Adtype.new
  end

  def create
    if @adtype.save
      redirect_to @adtype, :notice => "Successfully created adtype."
    else
      render :action => 'new'
    end
  end

  def edit
  end

  def update
    if @adtype.update_attributes(params[:adtype])
      redirect_to @adtype, :notice  => "Successfully updated adtype."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @adtype.destroy
    redirect_to adtypes_url, :notice => "Successfully destroyed adtype."
  end
end
