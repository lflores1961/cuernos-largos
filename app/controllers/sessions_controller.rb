class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      # Log the user in and render....what?
      log_in user
      redirect_to root_path, notice: "Hola #{ user.name }. Bienvenido al sistema de gestión del equipo."
    else
      # Create an error message
      redirect_to login_path, notice: "Error al iniciar sesión: La combinación de usuario/password no es correcta."
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end
end
