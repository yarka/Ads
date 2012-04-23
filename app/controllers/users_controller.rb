class UsersController < ApplicationController
  load_and_authorize_resource

  respond_to :html
  
  def index
    respond_with(@users = @users.order("created_at DESC").page(params[:page]).per_page(10))
  end

  def show
    respond_with(@user)
  end

  def edit
    respond_with(@user)
  end

  def update
    @user.role = params[:user][:role] if can? :assign_role, @user
    if @user.update_attributes(params[:user])
      flash[:notice]  = "Successfully updated user."
    end
    respond_with(@user)
  end

  def destroy
    flash[:notice] = "Successfully destroyed user."
    respond_with(@user.destroy)
  end
end
