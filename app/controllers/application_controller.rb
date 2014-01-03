class ApplicationController < ActionController::Base
  protect_from_forgery

  include SessionsHelper

  def index
    @user = User.new
  end

  def listados_in_holder
    respond_to do |format|
      format.html { render }
      format.js { render }
    end   
  end

  def ayuda
    respond_to do |format|
      format.html { render  }
      format.js { render }
    end   
  end

  def listado_1
    respond_to do |format|
      format.html { render  }
      format.js { render }
    end      
  end

  def listado_2
    respond_to do |format|
      format.html { render  }
      format.js { render }
    end      
  end

  def listado_3
    respond_to do |format|
      format.html { render  }
      format.js { render }
    end      
  end

  def listado_4
    respond_to do |format|
      format.html { render  }
      format.js { render }
    end      
  end

  def listado_5
    respond_to do |format|
      format.html { render  }
      format.js { render }
    end      
  end

  def listado_6
    respond_to do |format|
      format.html { render  }
      format.js { render }
    end      
  end

  def listado_7
    respond_to do |format|
      format.html { render  }
      format.js { render }
    end      
  end

  def listado_8
    respond_to do |format|
      format.html { render  }
      format.js { render }
    end      
  end

end
