class SessionsController < ApplicationController
  include SessionsHelper

  def new

  end

  def index
      @session = Session.new;

      respond_to do |format|
        format.html { render  }
        format.js {  }
      end    
    # end
  end
  
  def create
    # Busca al usuario por nombre
    if !params[:nombre].blank?
      user = (User.find_by_name(params[:nombre].downcase))
    end
      # Comprueba la contraseña para ese usuario
      check_pass = user.blank? ? false : (params[:pass] == user.password)

    if user.blank? or !check_pass

      flash[:error] = "Usuario o Contraseña incorrectos"

      respond_to do |format|
        format.html { redirect_to login_path}
        format.js {  }
      end
    else
      iniciar_sesion(user)
      self.current_user= user;
  
      respond_to do |format|
        format.html { redirect_to root_path }
        format.js {  }
      end
    end
  end

  def destroy
    current_user

    sign_out
    redirect_to root_url
  end



end
