class HousesController < ApplicationController
  before_action :set_house, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, only: %i[show index]
  before_action :authenticate_admin!, only: %i[edit update create destroy]
  # GET /houses or /houses.json
  def index
    @houses = House.order(id: :asc)
  end

  # GET /houses/1 or /houses/1.json
  def show
  end

  # GET /houses/new
  def new
    @house = House.new
  end

  # GET /houses/1/edit
  def edit
  end

  # POST /houses or /houses.json
  def create
    @house = House.new(house_params)

    @house.admin_id = current_admin.id

    respond_to do |format|
      if @house.save
        format.html { redirect_to admin_dashboard_path, notice: "La casa ha sido correctamente creada." }
        format.json { render :show, status: :created, location: @house }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @house.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /houses/1 or /houses/1.json
  def update
    respond_to do |format|
      if @house.update(house_params)
        format.html { redirect_to admin_dashboard_path, notice: "La casa ha sido correctamente actualizada." }
        format.json { render :show, status: :ok, location: @house }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @house.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /houses/1 or /houses/1.json
  def destroy
    @house.destroy

    respond_to do |format|
      format.html { redirect_to houses_url, notice: "House was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_house
      @house = House.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def house_params
      params.require(:house).permit(:title, :description, :admin_id, :price, :image, pictures: [])
    end
end
