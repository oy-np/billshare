class Item
	def initialize(*args, name: 'name', total: 0, unit: 0 , price_per_unit: 0)
		@name = name
		@total = total
		@unit = unit
		@price_per_unit = price_per_unit
	end
	def name
		name = @name
	end
	def total
		total = @total
	end
	def unit
		unit = @unit
	end
	def price_per_unit
		price_per_unit = @price_per_unit
	end
	def calculate
		if not @price_per_unit
	        @price_per_unit = @total / @unit
 		end
		if not @total
	        @total = @price_per_unit * @unit
		end
		if not @unit
	        @unit = @total / @price_per_unit
		end
	end
end

