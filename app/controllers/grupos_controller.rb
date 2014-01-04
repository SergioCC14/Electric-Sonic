class GruposController < ApplicationController
  
  def show_in_holder
    
    @grupos = Grupo.all

    respond_to do |format|
      format.html { render  }
      format.js {  }
    end    
  end

  def modificar

    @grupos = Grupo.all

    respond_to do |format|
      format.html { render  }
      format.js {  }
    end        
  end

  def alta

    @grupo = Grupo.new

    @alumnos = []

    for alumno in Alumno.all
      (!alumno.grupos.blank?) ?  nil : @alumnos << alumno
    end

    respond_to do |format|
      format.html { render  }
      format.js {  }
    end        
  end

  # POST /users
  def create

    # raise params[:grupo].inspect

    @grupo = Grupo.new(params[:grupo])

    respond_to do |format|
      if (@grupo.save)
        format.html { redirect_to root_path, notice: 'Grupo dado de alta correctamente' }
        format.json { render json: @grupo, status: :created, location: @grupo }
      else
        format.html { redirect_to root_path }
        format.json { render json: @grupo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @grupo = Grupo.find(params[:id])
    @grupo.destroy

    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Grupo eliminado correctamente' }
      format.json { head :no_content }
    end
  end

  # PUT /users/1
  # PUT /users/1.json
  def update
    @grupo = Grupo.find(params[:id])

    respond_to do |format|
      if @grupo.update_attributes(params[:grupo])
        format.html { redirect_to root_path, notice: 'Grupo actualizado' }
        format.js { redirect_to root_path }
      else
        format.html { render action: "edit" }
        format.js { render json: @grupo.errors, status: :unprocessable_entity }
      end
    end
  end


end
