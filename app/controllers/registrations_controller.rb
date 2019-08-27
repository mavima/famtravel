class RegistrationsController < Devise::RegistrationsController

  private


  def sign_up_params
    params.require(:user).permit(:first_name, :last_name, :baby, :toddler, :child, :email, :password, :password_confirmation, :country, :photo)
  end

end
