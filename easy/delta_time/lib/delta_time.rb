require 'time'

class DeltaTime

  attr_accessor :begin_time, :end_time

  def initialize(begin_time, end_time)
    @begin_time = parse_time(begin_time)
    @end_time = parse_time(end_time)
  end

  def parse_time(data)
  	Time.parse(data)
  end

  def get_delta
  	seconds = (@begin_time - @end_time).to_i.abs
  	
  	hours = (seconds / 3600).to_i
  	seconds -= hours  * 3600

  	minutes = (seconds / 60).to_i
  	
  	seconds -= (minutes * 60).to_i
  	
  	"#{hours.to_s.rjust(2, '0')}:#{minutes.to_s.rjust(2, '0')}:#{seconds.to_s.rjust(2, '0')}"
  end

end