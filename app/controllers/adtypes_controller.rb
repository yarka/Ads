class AdtypesController < ApplicationController
  load_and_authorize_resource

  respond_to :html
  
  def index
    respond_with(@adtypes = @adtypes.order("created_at DESC").page(params[:page]).per_page(10))
  end

  def show
    respond_with(@adtype)
  end

  def new
    respond_with(@adtype = Adtype.new)
  end

  def create
    if @adtype.save
      flash[:notice] = "Successfully created adtype."
    end
    respond_with(@adtype)
  end

  def edit
    respond_with(@adtype)
  end

  def update
    if @adtype.update_attributes(params[:adtype])
      flash[:notice]  = "Successfully updated adtype."
    end
    respond_with(@adtype)
  end

  def destroy
    flash[:notice] = "Successfully destroyed adtype."
    respond_with(@adtype.destroy)
  end
end
