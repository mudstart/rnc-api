class RncsController < ApplicationController
  before_action :set_rnc, only: [:show, :edit, :update, :destroy]

  # GET /rncs
  # GET /rncs.json
  def index
    @rncs = Rnc.all
  end

  # GET /rncs/1
  # GET /rncs/1.json
  def show
  end

  # GET /rncs/new
  def new
    @rnc = Rnc.new
  end

  # GET /rncs/1/edit
  def edit
  end

  # POST /rncs
  # POST /rncs.json
  def create
    @rnc = Rnc.new(rnc_params)

    respond_to do |format|
      if @rnc.save
        format.html { redirect_to @rnc, notice: 'Rnc was successfully created.' }
        format.json { render :show, status: :created, location: @rnc }
      else
        format.html { render :new }
        format.json { render json: @rnc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rncs/1
  # PATCH/PUT /rncs/1.json
  def update
    respond_to do |format|
      if @rnc.update(rnc_params)
        format.html { redirect_to @rnc, notice: 'Rnc was successfully updated.' }
        format.json { render :show, status: :ok, location: @rnc }
      else
        format.html { render :edit }
        format.json { render json: @rnc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rncs/1
  # DELETE /rncs/1.json
  def destroy
    @rnc.destroy
    respond_to do |format|
      format.html { redirect_to rncs_url, notice: 'Rnc was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rnc
      @rnc = Rnc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rnc_params
      params.require(:rnc).permit(:nombre)
    end
end
