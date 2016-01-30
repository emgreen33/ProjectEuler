def sum_of_three_and_five(num)
	i = 0
	result = 0
	while i < num
		if (i % 3 == 0) || (i % 5 == 0)
			result += i
			end
			i+=1
		end
	result
end


puts sum_of_three_and_five(10)
puts sum_of_three_and_five(1000)