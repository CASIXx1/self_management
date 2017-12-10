class DairiesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_dairy, only: [:show, :edit, :update, :destroy]
  before_action :set_checks, only: [:update]

  # GET /dairies
  # GET /dairies.json
  def index
    @dairies = current_user.dairies.all
  end

  # GET /dairies/1
  # GET /dairies/1.json
  def show
  end

  # GET /dairies/new
  def new
    @dairy = current_user.dairies.new
  end

  # GET /dairies/1/edit
  def edit
    @checks = Check.where(dairy: @dairy)
  end

  # POST /dairies
  # POST /dairies.json
  def create
    @dairy = current_user.dairies.new(dairy_params)

    respond_to do |format|
      if @dairy.save
        Custom.all.each do |custom|
          Check.create(dairy: @dairy, custom: custom)
        end
        format.html { redirect_to dairies_path, notice: 'Dairy was successfully created.' }
        format.json { render :show, status: :created, location: @dairy }
      else
        format.html { render :new }
        format.json { render json: @dairy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dairies/1
  # PATCH/PUT /dairies/1.json
  def update
    respond_to do |format|
      if @dairy.update(dairy_params)
        @checks.update(check_params)
        format.html { redirect_to dairies_path, notice: 'Dairy was successfully updated.' }
        format.json { render :show, status: :ok, location: @dairy }
      else
        format.html { render :edit }
        format.json { render json: @dairy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dairies/1
  # DELETE /dairies/1.json
  def destroy
    @dairy.destroy
    respond_to do |format|
      format.html { redirect_to dairies_url, notice: 'Dairy was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dairy
      @dairy = Dairy.find(params[:id])
    end

    def set_checks
      @checks = Check.where(dairy: params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dairy_params
      params.fetch(:dairy, {}).permit(:date)
    end

    def check_params
      params.fetch(:check, {}).permit(:continue)
    end
end
