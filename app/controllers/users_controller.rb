class UsersController < ApplicationController

  load_and_authorize_resource
  
  def index
  end

  def show
  end

  def edit
  end

  def update
    if @user.update_attributes(params[:user])
      redirect_to @user, :notice  => "Successfully updated user."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @user.destroy
    redirect_to users_url, :notice => "Successfully destroyed user."
  end
end
