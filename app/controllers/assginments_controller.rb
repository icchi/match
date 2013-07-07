class AssginmentsController < ApplicationController
  before_action :set_assginment, only: [:show, :edit, :update, :destroy]

  # GET /assginments
  def index
    @assginments = Assginment.all
  end

  # GET /assginments/1
  def show
  end

  # GET /assginments/new
  def new
    @assginment = Assginment.new
  end

  # GET /assginments/1/edit
  def edit
  end

  # POST /assginments
  def create
    @assginment = Assginment.new(assginment_params)

    if @assginment.save
      redirect_to @assginment, notice: 'Assginment was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /assginments/1
  def update
    if @assginment.update(assginment_params)
      redirect_to @assginment, notice: 'Assginment was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /assginments/1
  def destroy
    @assginment.destroy
    redirect_to assginments_url, notice: 'Assginment was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_assginment
      @assginment = Assginment.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def assginment_params
      params.require(:assginment).permit(:start_date, :end_date, :worker_id, :project_id)
    end
end
