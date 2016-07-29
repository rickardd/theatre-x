class CoOperationsController < ApplicationController
  before_action :set_co_operation, only: [:show, :edit, :update, :destroy]

  # GET /co_operations
  # GET /co_operations.json
  def index
    @co_operations = CoOperation.all
  end

  # GET /co_operations/1
  # GET /co_operations/1.json
  # def show
  # end

  # GET /co_operations/new
  # def new
  #   @co_operation = CoOperation.new
  # end

  # POST /co_operations
  # POST /co_operations.json
  # def create
  #   @co_operation = CoOperation.new(co_operation_params)

  #   respond_to do |format|
  #     if @co_operation.save
  #       format.html { redirect_to @co_operation, notice: 'Co operation was successfully created.' }
  #       format.json { render :show, status: :created, location: @co_operation }
  #     else
  #       format.html { render :new }
  #       format.json { render json: @co_operation.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # GET /co_operations/1/edit
  def edit
  end

  # PATCH/PUT /co_operations/1
  # PATCH/PUT /co_operations/1.json
  def update
    respond_to do |format|
      if @co_operation.update(co_operation_params)
        flash[:success] = "Co operation was successfully updated"
        format.html { redirect_to co_operations_path }
        format.json { render :show, status: :ok, location: @co_operation }
      else
        format.html { render :edit }
        format.json { render json: @co_operation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /co_operations/1
  # DELETE /co_operations/1.json
  # def destroy
  #   @co_operation.destroy
  #   respond_to do |format|
  #     format.html { redirect_to co_operations_url, notice: 'Co operation was successfully destroyed.' }
  #     format.json { head :no_content }
  #   end
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_co_operation
      @co_operation = CoOperation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def co_operation_params
      params.require(:co_operation).permit(:column_1, :column_2, :title, :image, :on_page)
    end
end
