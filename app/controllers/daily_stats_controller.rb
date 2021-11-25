class DailyStatsController < ApplicationController
  before_action :set_daily_stat, only: [:show, :update, :destroy]

  # GET /daily_stats
  def index
    @daily_stats = DailyStat.all

    render json: @daily_stats
  end

  # GET /daily_stats/1
  def show
    render json: @daily_stat
  end

  # POST /daily_stats
  def create
    @daily_stat = DailyStat.new(daily_stat_params)

    if @daily_stat.save
      render json: @daily_stat, status: :created, location: @daily_stat
    else
      render json: @daily_stat.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /daily_stats/1
  def update
    if @daily_stat.update(daily_stat_params)
      render json: @daily_stat
    else
      render json: @daily_stat.errors, status: :unprocessable_entity
    end
  end

  # DELETE /daily_stats/1
  def destroy
    @daily_stat.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daily_stat
      @daily_stat = DailyStat.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def daily_stat_params
      params.require(:daily_stat).permit(:total_restrcited_time, :non_alloted_time, :tracked_time, :max_time, :user_id, :total_time)
    end
end
