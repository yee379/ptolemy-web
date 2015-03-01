class DeviceUptime < ActiveRecord::Base
  self.table_name = "alert__devices_unreachable"
  
  def percent_uptime()
    return self.updated_at
  end

  # http://makandracards.com/makandra/984-test-if-two-date-ranges-overlap-in-ruby-or-rails
  # Return a scope for all interval overlapping the given interval, including the given interval itself
  named_scope :overlapping, lambda { |interval| {
    :conditions => ["(DATEDIFF(start_date, ?) * DATEDIFF(?, end_date)) >= 0", interval.end_date, interval.start_date]
  }}


end
