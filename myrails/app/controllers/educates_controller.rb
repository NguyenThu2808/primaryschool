class EducatesController < ApplicationController
  before_action :set_educate, only: [:show, :edit, :update, :destroy]
  layout "backend"
  # GET /educates
  # GET /educates.json
  def index
    @educates = Educate.all
  end

  # GET /educates/1
  # GET /educates/1.json
  def show
  end

  # GET /educates/new
  def new
    @educate = Educate.new
  end

  # GET /educates/1/edit
  def edit
  end

  # POST /educates
  # POST /educates.json
  def create
    @educate = Educate.new(educate_params)

    respond_to do |format|
      if @educate.save
        format.html { redirect_to @educate, notice: 'Educate was successfully created.' }
        format.json { render :show, status: :created, location: @educate }
      else
        format.html { render :new }
        format.json { render json: @educate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /educates/1
  # PATCH/PUT /educates/1.json
  def update
    respond_to do |format|
      if @educate.update(educate_params)
        format.html { redirect_to @educate, notice: 'Educate was successfully updated.' }
        format.json { render :show, status: :ok, location: @educate }
      else
        format.html { render :edit }
        format.json { render json: @educate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /educates/1
  # DELETE /educates/1.json
  def destroy
    @educate.destroy
    respond_to do |format|
      format.html { redirect_to educates_url, notice: 'Educate was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_educate
      @educate = Educate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def educate_params
      params.require(:educate).permit(:name, :content, :picture)
    end
end
