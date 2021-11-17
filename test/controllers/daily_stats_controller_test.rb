require "test_helper"

class DailyStatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @daily_stat = daily_stats(:one)
  end

  test "should get index" do
    get daily_stats_url, as: :json
    assert_response :success
  end

  test "should create daily_stat" do
    assert_difference('DailyStat.count') do
      post daily_stats_url, params: { daily_stat: { max_time: @daily_stat.max_time, non_alloted_time: @daily_stat.non_alloted_time, total_restrcited_time: @daily_stat.total_restrcited_time, tracked_time: @daily_stat.tracked_time, user_id: @daily_stat.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show daily_stat" do
    get daily_stat_url(@daily_stat), as: :json
    assert_response :success
  end

  test "should update daily_stat" do
    patch daily_stat_url(@daily_stat), params: { daily_stat: { max_time: @daily_stat.max_time, non_alloted_time: @daily_stat.non_alloted_time, total_restrcited_time: @daily_stat.total_restrcited_time, tracked_time: @daily_stat.tracked_time, user_id: @daily_stat.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy daily_stat" do
    assert_difference('DailyStat.count', -1) do
      delete daily_stat_url(@daily_stat), as: :json
    end

    assert_response 204
  end
end
