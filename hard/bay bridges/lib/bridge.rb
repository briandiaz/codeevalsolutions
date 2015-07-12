require_relative 'point'

class Bridge
	attr_accessor :id, :initial_location, :final_location

	def initialize(id, initial_location, final_location)
		@id = id
		@initial_location = initial_location
		@final_location = final_location
	end

	def self.parse(args)
		id, location_data = args.split(':')
		location_data.gsub!(/[() ]/,'')
		points_data = location_data.split('],[')
		initial_point = Point.parse(points_data[0])
		final_point = Point.parse(points_data[1])
		Bridge.new(id.to_i, initial_point, final_point)
	end

	def distance
		Point.brige_distance(self)
	end

	def to_s
		"#{@id}: (#{@initial_location}, #{@final_location})"
	end
	
	
	# Line Segment Intersection
	# Illinois Computer Science, Fall 2002, Chapter F
	# http://jeffe.cs.illinois.edu/teaching/373/notes/x06-sweepline.pdf
	# 	Two segments ab and cd intersect if and only if
	# 		• the endpoints a and b are on opposite sides of the line cd, and
	# 		• the endpoints c and d are on opposite sides of the line ab.
	#
	def self.intersection(bridge_1, bridge_2)
		a = bridge_1.initial_location
		b = bridge_1.final_location
		c = bridge_2.initial_location
		d = bridge_2.final_location

        Point.counter_clock_wise(a,c,d) != Point.counter_clock_wise(b,c,d) and 
        		Point.counter_clock_wise(a,b,c) != Point.counter_clock_wise(a,b,d)
	end
end