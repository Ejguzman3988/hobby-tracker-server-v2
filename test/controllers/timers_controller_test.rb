require "test_helper"

class TimersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @timer = timers(:one)
  end

  test "should get index" do
    get timers_url, as: :json
    assert_response :success
  end

  test "should create timer" do
    assert_difference('Timer.count') do
      post timers_url, params: { timer: { category_id: @timer.category_id, description: @timer.description, name: @timer.name, time_ended: @timer.time_ended, time_started: @timer.time_started, time_total: @timer.time_total, user_id: @timer.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show timer" do
    get timer_url(@timer), as: :json
    assert_response :success
  end

  test "should update timer" do
    patch timer_url(@timer), params: { timer: { category_id: @timer.category_id, description: @timer.description, name: @timer.name, time_ended: @timer.time_ended, time_started: @timer.time_started, time_total: @timer.time_total, user_id: @timer.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy timer" do
    assert_difference('Timer.count', -1) do
      delete timer_url(@timer), as: :json
    end

    assert_response 204
  end
end
