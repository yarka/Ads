class UsersController < ApplicationController

  load_and_authorize_resource
  
  def index
  end

  def show
  end

  def edit
  end

  def update
    @user.role = params[:user][:role]
    @user.email = params[:user][:email]
    @user.first_name = params[:user][:first_name]
    @user.last_name = params[:user][:last_name]
    if @user.save
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
