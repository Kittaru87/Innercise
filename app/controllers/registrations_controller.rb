class RegistrationsController < Devise::RegistrationsController






private

  def sign_up_params 
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end
  
  def account_update_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation, :current_password)
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
    devise_parameter_sanitizer.permit(:account_update, keys: [:username])
  end

end
