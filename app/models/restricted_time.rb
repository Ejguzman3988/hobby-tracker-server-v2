class RestrictedTime < ApplicationRecord
  belongs_to :user
  def initialize(attr)
    super(attr)

    default_stat = User.find(self.user_id).default_stat
    default_stat && default_stat.update(total_restricted_time: default_stat.total_restricted_time+self.total_time)
  end
end
