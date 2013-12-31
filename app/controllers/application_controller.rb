class ApplicationController < ActionController::Base
  protect_from_forgery

  include SessionsHelper

  def index
    @user = User.new
  end

  def listados_in_holder
    respond_to do |format|
      format.html { render  }
      format.js { render }
    end   
  end

  def ayuda
    respond_to do |format|
      format.html { render  }
      format.js { render }
    end   
  end


end
