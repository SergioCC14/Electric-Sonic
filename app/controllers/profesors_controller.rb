class ProfesorsController < ApplicationController
  
  def show_in_holder

    @profesors = Profesor.all

    respond_to do |format|
      format.html { render  }
      format.js {  }
    end    
  end

  def modificar
    @profesors = Profesor.all

    respond_to do |format|
      format.html { render  }
      format.js {  }
    end        
  end

  def alta

    @profesor = Profesor.new

    @alumnos = []

    for alumno in Alumno.all
      (Profesor.find_by_alumno_id(alumno.id)) ?  nil : @alumnos << alumno
    end

    respond_to do |format|
      format.html { render  }
      format.js {  }
    end        
  end

  # POST /users
  def create
    @profesor = Profesor.new(params[:profesor])

    respond_to do |format|
      if (@profesor.save)
        format.html { redirect_to root_path, notice: 'Profesor dado de alta correctamente' }
        format.json { render json: @profesor, status: :created, location: @profesor }
      else
        format.html { redirect_to root_path }
        format.json { render json: @profesor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @profesor = Profesor.find(params[:id])
    @profesor.destroy

    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Profesors eliminado correctamente' }
      format.json { head :no_content }
    end
  end

  # PUT /users/1
  # PUT /users/1.json
  def update
    @profesor = Profesor.find(params[:id])

    respond_to do |format|
      if @profesor.update_attributes(params[:profesor])
        format.html { redirect_to root_path, notice: 'Profesor actualizado.' }
        format.js { redirect_to root_path }
      else
        format.html { render action: "edit" }
        format.js { render json: @profesor.errors, status: :unprocessable_entity }
      end
    end
  end


end
