class RegistrationsController < Devise::RegistrationsController

  def destroy
    if can? :destroy_account, @user
      resource.destroy
      Devise.sign_out_all_scopes ? sign_out : sign_out(resource_name)
      set_flash_message :notice, :destroyed if is_navigational_format?
      respond_with_navigational(resource){ redirect_to after_sign_out_path_for(resource_name) }
    else
      respond_with(@user)
    end
  end
end