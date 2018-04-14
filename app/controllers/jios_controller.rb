class JiosController < ApplicationController
  before_action :set_jio, only: [:show, :edit, :update, :destroy]

  # GET /static_pages/landing
  # GET /static_pages/landing.json
  def landing
  end

  # GET /jios/1
  # GET /jios/1.json
  def show
  end

  # GET /jios/new
  def new
    @jio = Jio.new
  end

  # GET /jios/1/edit
  def edit
  end

  # POST /jios
  # POST /jios.json
  def create
    @jio = Jio.new(jio_params)

    respond_to do |format|
      if @jio.save
        format.html { redirect_to @jio, notice: 'Jio was successfully created.' }
        format.json { render :show, status: :created, location: @jio }
      else
        format.html { render :new }
        format.json { render json: @jio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jios/1
  # PATCH/PUT /jios/1.json
  def update
    respond_to do |format|
      if @jio.update(jio_params)
        format.html { redirect_to @jio, notice: 'Jio was successfully updated.' }
        format.json { render :show, status: :ok, location: @jio }
      else
        format.html { render :edit }
        format.json { render json: @jio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jios/1
  # DELETE /jios/1.json
  def destroy
    @jio.destroy
    respond_to do |format|
      format.html { redirect_to jios_url, notice: 'Jio was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jio
      @jio = Jio.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def jio_params
      params.require(:jio).permit(:name, :contact_number)
    end
end
