class AlumnosController < ApplicationController
  
  def show_in_holder
    
    @alumnos = Alumno.all

    respond_to do |format|
      format.html { render  }
      format.js {  }
    end    
  end

  def modificar

    @alumnos = Alumno.all

    respond_to do |format|
      format.html { render  }
      format.js {  }
    end        
  end

  def alta

    @alumno = Alumno.new
    @grupos = Grupo.all
    @profesors = []

    for profesor in Profesor.all
      (!profesor.alumno.blank?) ?  nil : @profesors << profesor
    end
    

    respond_to do |format|
      format.html { render  }
      format.js {  }
    end        
  end

  # POST /users
  def create

    @alumno = Alumno.new(params[:alumno])

    respond_to do |format|
      if (@alumno.save)
        format.html { redirect_to root_path, notice: 'Alumno dado de alta correctamente' }
        format.json { render json: @alumno, status: :created, location: @alumno }
      else
        format.html { redirect_to root_path }
        format.json { render json: @alumno.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @alumno = Alumno.find(params[:id])
    @alumno.destroy

    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Alumno eliminado correctamente' }
      format.json { head :no_content }
    end
  end

  # PUT /users/1
  # PUT /users/1.json
  def update
    @alumno = Alumno.find(params[:id])

    respond_to do |format|
      if @alumno.update_attributes(params[:alumno])
        format.html { redirect_to root_path, notice: 'Alumno actualizado' }
        format.js { redirect_to root_path }
      else
        format.html { render action: "edit" }
        format.js { render json: @alumno.errors, status: :unprocessable_entity }
      end
    end
  end


end
