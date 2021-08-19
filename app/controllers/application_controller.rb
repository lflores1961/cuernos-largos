class ApplicationController < ActionController::Base
  include SessionsHelper
  
  # Confirms a logged in user
  def logged_in_user
    unless logged_in?
      store_location
      flash[:danger] = "Por favor registre su entrada al sistema."
      redirect_to login_path
    end
  end

  # Confirms the correct user
  def correct_user
    @user = User.find(params[:id])
    redirect_to(root_url) unless current_user? (@user)
  end
  
  
end
