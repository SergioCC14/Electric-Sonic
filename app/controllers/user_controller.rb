class UsersController < ApplicationController
  include SessionsHelper
  include ApplicationHelper

  # before_filter :connected?, :except => [:show]

  # GET /users
  # GET /users.json
  def index

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users }
    end
  end




end
