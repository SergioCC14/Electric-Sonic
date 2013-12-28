module SessionsHelper

  # Crea la cookie para mantener la sesión y un Token para localizarla y validarla
  def iniciar_sesion(user)
    remember_token = User.new_remember_token

    cookies.permanent["TFCAut_remember_token"] = remember_token
    user.update_attribute(:remember_token, User.encrypt(remember_token))
    self.current_user = user
  end

  def sign_out
    self.current_user = nil
    cookies.delete("TFCAut_remember_token")
  end

  def signed_in?
    !current_user.blank?
  end

  def current_user=(user)
    @current_user = user
  end

  def current_user
    remember_token = User.encrypt(cookies["TFCAut_remember_token"])
    @current_user ||= User.find_by_remember_token(remember_token)
  end

end
