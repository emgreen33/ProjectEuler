class Integer
	def factorial
		(1..self).inject(1) {|product, n| product * n}
	end

	def grid(x,y)
		total = (x+y).factorial / (x.factorial) * (y.factorial)
		total
	end
end

puts grid(20,20)



 