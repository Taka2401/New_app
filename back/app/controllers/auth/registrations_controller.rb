class Auth::RegistrationsController < DeviseTokenAuth::ApplicationController
  private

  def sign_up_params
    params.permit(:name, :email, :password, :password_confirmation)
  end
end
