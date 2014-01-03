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
    @grupos = []
    for grupo in Grupo.all
      (grupo.alumnos.blank?) ?  nil : @grupos << grupo
    end

    respond_to do |format|
      format.html { render  }
      format.js { render }
    end      
  end

  def listado_4

    @tribunals = []
    for tribunal in Tribunal.all
      (tribunal.profesors.blank?) ?  nil : @tribunals << tribunal
    end

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

    @tribunals = Tribunal.where("tfg_id IS NOT NULL")

    respond_to do |format|
      format.html { render  }
      format.js { render }
    end      
  end

end
