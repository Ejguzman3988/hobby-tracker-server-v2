class RestrictedTimesController < ApplicationController
  before_action :set_restricted_time, only: [:show, :update, :destroy]

  # GET /restricted_times
  def index
    @restricted_times = RestrictedTime.all

    render json: @restricted_times
  end

  # GET /restricted_times/1
  def show
    render json: @restricted_time
  end

  # POST /restricted_times
  def create
    @restricted_time = RestrictedTime.new(restricted_time_params)

    if @restricted_time.save
      render json: @restricted_time, status: :created, location: @restricted_time
    else
      render json: @restricted_time.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /restricted_times/1
  def update
    if @restricted_time.update(restricted_time_params)
      render json: @restricted_time
    else
      render json: @restricted_time.errors, status: :unprocessable_entity
    end
  end

  # DELETE /restricted_times/1
  def destroy
    @restricted_time.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_restricted_time
      @restricted_time = RestrictedTime.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def restricted_time_params
      params.require(:restricted_time).permit(:name, :total_time, :user_id)
    end
end
