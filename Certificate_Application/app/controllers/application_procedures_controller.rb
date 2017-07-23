class ApplicationProceduresController < ApplicationController
  before_action :set_application_procedure, only: [:show, :update, :destroy]

  # GET /application_procedures
  def index
    @application_procedures = ApplicationProcedure.all

    render json: @application_procedures
  end

  # GET /application_procedures/1
  def show
    render json: @application_procedure
  end

  # POST /application_procedures
  def create
    @application_procedure = ApplicationProcedure.new(application_procedure_params)

    if @application_procedure.save
      render json: @application_procedure, status: :created, location: @application_procedure
    else
      render json: @application_procedure.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /application_procedures/1
  def update
    if @application_procedure.update(application_procedure_params)
      render json: @application_procedure
    else
      render json: @application_procedure.errors, status: :unprocessable_entity
    end
  end

  # DELETE /application_procedures/1
  def destroy
    @application_procedure.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_application_procedure
      @application_procedure = ApplicationProcedure.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def application_procedure_params
      params.permit(:certificate_type, :user_id, :payment)
    end
end
