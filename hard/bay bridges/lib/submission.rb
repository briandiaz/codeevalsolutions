class Point
	#  Earth’s radius = 6,371km
	EARTH_RADIUS = 6371000

	attr_accessor :latitude, :longitude
	
	def initialize(latitude, longitude)
		@latitude = latitude
		@longitude = longitude
	end
	

	def to_s
		"[#{@latitude}, #{@longitude}]"
	end


	def self.counter_clock_wise?(point_a, point_b, point_c)
		(point_c.longitude - point_a.longitude)*(point_b.latitude-point_a.latitude) >
				 (point_b.longitude - point_a.longitude) * (point_c.latitude-point_a.latitude)
	end

	def self.parse(args)
		latitude, longitude = args.gsub!(/[\[\]]/,'').split(',').map(&:to_f)
		Point.new(latitude, longitude)
	end
end

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
	def self.intersection?(bridge_1, bridge_2)
		a = bridge_1.initial_location
		b = bridge_1.final_location
		c = bridge_2.initial_location
		d = bridge_2.final_location

        Point.counter_clock_wise?(a,c,d) != Point.counter_clock_wise?(b,c,d) and 
        		Point.counter_clock_wise?(a,b,c) != Point.counter_clock_wise?(a,b,d)
	end
end

class BayBridges
	attr_accessor :bridges

	def initialize(bridges)
		@bridges = bridges
	end

	def not_crossing_bridges
		efficient_bridges = []
		intersected_bridges = []
		ng = {}
		@bridges.map{ |b| ng[b.id] = 0 }
		@bridges.each do |bridge_1|
			n = 1
			@bridges.each do |bridge_2|
				if Bridge.intersection?(bridge_1, bridge_2)
					#puts "Intersection #{bridge_1} -> #{bridge_2}"
					#intersected_bridges << bridge_1
					ng[bridge_1.id] = n
					n+=1
				end
			end
		end
		ng.map{ |bridge_id, value|  efficient_bridges << bridge_id if value <= 2 }
		efficient_bridges
	end
end
#ARGV[0]
bridges = []
File.open(ARGV[0]).each_line do |line|
	bridges << Bridge.parse(line)
end
bay_bridges = BayBridges.new(bridges)
bay_bridges.not_crossing_bridges.each { |bridge| puts bridge }
