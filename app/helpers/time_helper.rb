module TimeHelper
  def format_time(time, time_zone = 'CET')
    time.in_time_zone(time_zone)
  end
end