class ApplicationController < ActionController::API
  around_action :set_time_zone

  private

  def set_time_zone
    Time.use_zone(User.first.timezone) { yield }
  end

end
