class TfgsController < ApplicationController
  
  def show_in_holder
    
    @tfgs = Tfg.all

    respond_to do |format|
      format.html { render  }
      format.js {  }
    end    
  end

  def modificar

    @tfgs = Tfg.all

    respond_to do |format|
      format.html { render  }
      format.js {  }
    end        
  end

  def alta

    @tfg = Tfg.new

    respond_to do |format|
      format.html { render  }
      format.js {  }
    end        
  end

  # POST /users
  def create
    @tfg = Tfg.new(params[:tfg])

    respond_to do |format|
      if (@tfg.save)
        format.html { redirect_to root_path, notice: 'TFG dado de alta correctamente' }
        format.json { render json: @tfg, status: :created, location: @tfg }
      else
        format.html { redirect_to root_path }
        format.json { render json: @tfg.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @tfg = Tfg.find(params[:id])
    @tfg.destroy

    respond_to do |format|
      format.html { redirect_to root_path, notice: 'TFG eliminado correctamente' }
      format.json { head :no_content }
    end
  end

  # PUT /users/1
  # PUT /users/1.json
  def update
    @tfg = Tfg.find(params[:id])

    respond_to do |format|
      if @tfg.update_attributes(params[:tfg])
        format.html { redirect_to root_path, notice: 'TFG actualizado.' }
        format.js { redirect_to root_path }
      else
        format.html { render action: "edit" }
        format.js { render json: @alumno.errors, status: :unprocessable_entity }
      end
    end
  end


end
