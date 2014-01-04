class TribunalsController < ApplicationController
  
  def show_in_holder
    
    @tribunals = Tribunal.all

    respond_to do |format|
      format.html { render  }
      format.js {  }
    end    
  end

  def modificar

    @tribunals = Tribunal.all

    respond_to do |format|
      format.html { render  }
      format.js {  }
    end        
  end

  def alta

    @tribunal = Tribunal.new
    @tfgs = []

    for tfg in Tfg.all
      (Tribunal.find_by_tfg_id(tfg.id)) ?  nil : @tfgs << tfg
    end

    respond_to do |format|
      format.html { render  }
      format.js {  }
    end

    @profesors = Profesor.all

  end

  # POST /users
  def create
    @tribunal = Tribunal.new(params[:tribunal])

    respond_to do |format|
      if (@tribunal.save)
        format.html { redirect_to root_path, notice: 'Tribunal dado de alta correctamente' }
        format.json { render json: @tribunal, status: :created, location: @tribunal }
      else
        format.html { redirect_to root_path }
        format.json { render json: @tribunal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @tribunal = Tribunal.find(params[:id])
    @tribunal.destroy

    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Tribunal eliminado correctamente' }
      format.json { head :no_content }
    end
  end

  # PUT /users/1
  # PUT /users/1.json
  def update
    @tribunal = Tribunal.find(params[:id])

    respond_to do |format|
      if @tribunal.update_attributes(params[:tribunal])
        format.html { redirect_to root_path, notice: 'Tribunal actualizado' }
        format.js { redirect_to root_path }
      else
        format.html { render action: "edit" }
        format.js { render json: @tribunal.errors, status: :unprocessable_entity }
      end
    end
  end


end
