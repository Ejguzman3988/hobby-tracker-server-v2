require "test_helper"

class RestrictedTimesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @restricted_time = restricted_times(:one)
  end

  test "should get index" do
    get restricted_times_url, as: :json
    assert_response :success
  end

  test "should create restricted_time" do
    assert_difference('RestrictedTime.count') do
      post restricted_times_url, params: { restricted_time: { int: @restricted_time.int, name: @restricted_time.name, total_time: @restricted_time.total_time, user_id: @restricted_time.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show restricted_time" do
    get restricted_time_url(@restricted_time), as: :json
    assert_response :success
  end

  test "should update restricted_time" do
    patch restricted_time_url(@restricted_time), params: { restricted_time: { int: @restricted_time.int, name: @restricted_time.name, total_time: @restricted_time.total_time, user_id: @restricted_time.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy restricted_time" do
    assert_difference('RestrictedTime.count', -1) do
      delete restricted_time_url(@restricted_time), as: :json
    end

    assert_response 204
  end
end
