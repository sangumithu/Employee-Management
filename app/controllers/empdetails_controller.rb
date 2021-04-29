class EmpdetailsController < ApplicationController
  before_action :set_empdetail, only: [:show, :edit, :update, :destroy]

  # GET /empdetails
  # GET /empdetails.json
  def index
    @empdetails = Empdetail.page(params[:page])
  end

  def search
    @empdetails = Empdetail.where("name LIKE ?", "%" + params[:q] + "%")
  end

  # GET /empdetails/1
  # GET /empdetails/1.json
  def show
  end

  # GET /empdetails/new
  def new
    @empdetail = Empdetail.new
  end

  # GET /empdetails/1/edit
  def edit
  end

  # POST /empdetails
  # POST /empdetails.json
  def create
    @empdetail = Empdetail.new(empdetail_params)

    respond_to do |format|
      if @empdetail.save
        format.html { redirect_to @empdetail, notice: 'Empdetail was successfully created.' }
        format.json { render :show, status: :created, location: @empdetail }
      else
        format.html { render :new }
        format.json { render json: @empdetail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /empdetails/1
  # PATCH/PUT /empdetails/1.json
  def update
    respond_to do |format|
      if @empdetail.update(empdetail_params)
        format.html { redirect_to @empdetail, notice: 'Empdetail was successfully updated.' }
        format.json { render :show, status: :ok, location: @empdetail }
      else
        format.html { render :edit }
        format.json { render json: @empdetail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /empdetails/1
  # DELETE /empdetails/1.json
  def destroy
    @empdetail.destroy
    respond_to do |format|
      format.html { redirect_to empdetails_url, notice: 'Empdetail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_empdetail
      @empdetail = Empdetail.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def empdetail_params
      params.require(:empdetail).permit(:name, :role, :email, :phone_number, :location)
    end
end
