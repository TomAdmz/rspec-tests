class Timer
	attr_accessor :seconds	

	def initialize(seconds=0)
		@seconds = seconds
	end	

	def time_string
		@hours = @seconds / 60 / 60
		@seconds -= @hours * 60 * 60

		@minutes = @seconds / 60
		@seconds -= @minutes * 60

		@time_string = @hours.to_s.rjust(2, "0") + ":" + @minutes.to_s.rjust(2, "0") + ":" + @seconds.to_s.rjust(2, "0")
	end

end