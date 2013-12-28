class User < ActiveRecord::Base

  attr_accessible :name, :password

  # Genera un Token de base 64
  def User.new_remember_token
    SecureRandom.urlsafe_base64
  end

  # Cifra usando SHA1 el token
  def User.encrypt(token)
    Digest::SHA1.hexdigest(token.to_s)
  end

  private
    # Genera un Token único por sesión al usuario
    def generate_remember_token
      self.remember_token = User.encrypt(User.new_remember_token)
    end

end