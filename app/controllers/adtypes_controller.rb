class AdtypesController < ApplicationController
  def index
    @adtypes = Adtype.all
  end

  def show
    @adtype = Adtype.find(params[:id])
  end

  def new
    @adtype = Adtype.new
  end

  def create
    @adtype = Adtype.new(params[:adtype])
    if @adtype.save
      redirect_to @adtype, :notice => "Successfully created adtype."
    else
      render :action => 'new'
    end
  end

  def edit
    @adtype = Adtype.find(params[:id])
  end

  def update
    @adtype = Adtype.find(params[:id])
    if @adtype.update_attributes(params[:adtype])
      redirect_to @adtype, :notice  => "Successfully updated adtype."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @adtype = Adtype.find(params[:id])
    @adtype.destroy
    redirect_to adtypes_url, :notice => "Successfully destroyed adtype."
  end
end
