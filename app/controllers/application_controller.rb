class ApplicationController < ActionController::API
  around_action :set_time_zone

  private

  def set_time_zone
    if(User.first)
      Time.use_zone(User.first.timezone) { yield } if User.first
    else
      yield
    end
  end

end
