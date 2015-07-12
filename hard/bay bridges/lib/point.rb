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


	def self.counter_clock_wise(point_a, point_b, point_c)
		(point_c.longitude - point_a.longitude)*(point_b.latitude-point_a.latitude) >
				 (point_b.longitude - point_a.longitude) * (point_c.latitude-point_a.latitude)
	end


	def self.brige_distance(bridge)
		self.distance(bridge.initial_location, bridge.final_location)
	end

	# Using  haversine formula
	# Δφ = to_radians(lat2-lat1)
	# Δλ = to_radians(lon2-lon1)
	# a = sin²(Δφ/2) + cos φ1 * cos φ2 * sin²(Δλ/2)
	# angle = 2 * atan2( √a, √(1−a) )
	# distance = EARTH_RADIUS * angle
	def self.distance(point_1, point_2)
		distance_longitude = self.to_radian(point_2.longitude - point_1.longitude)
		distance_latitude = self.to_radian(point_2.latitude - point_1.latitude)
		# Square of half the chord length between the points
     	chord_between_points = (Math.sin(distance_latitude / 2) ** 2) + Math.cos(self.to_radian(point_1.latitude)) * Math.cos(self.to_radian(point_2.latitude)) * (Math.sin(distance_longitude / 2) ** 2)
     	# Angular distance in radians
     	angle = 2 * Math.atan2(Math.sqrt(chord_between_points), Math.sqrt(1 - chord_between_points))
     	EARTH_RADIUS * angle
	end

	def self.to_radian(coordinate)
		coordinate * (Math::PI / 180)
	end

	def self.parse(args)
		latitude, longitude = args.gsub!(/[\[\]]/,'').split(',').map(&:to_f)
		Point.new(latitude, longitude)
	end


end