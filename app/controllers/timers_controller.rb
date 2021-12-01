class TimersController < ApplicationController
  before_action :set_timer, only: [:show, :update, :destroy]

  # GET /timers
  def index
    @timers = Timer.all

    render json: @timers
  end

  # GET /timers/1
  def show
    render json: @timer
  end

  # POST /timers
  def create
    @timer = Timer.new(timer_params)

    if @timer.save
      render json: @timer, status: :created, location: @timer
    else
      render json: @timer.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /timers/1
  def update
    if @timer.update(timer_params)
      render json: @timer
    else
      render json: @timer.errors, status: :unprocessable_entity
    end
  end

  # DELETE /timers/1
  def destroy
    @timer.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_timer
      @timer = Timer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def timer_params
      params.require(:timer).permit(:user_id, :category_id, :name, :description, :time_total)
    end
end
