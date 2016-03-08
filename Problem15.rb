

def fact(num)
  if num == 0
    1
  else
    num * fact(num - 1)
  end
end

def grid_routes(num)
	total = (fact((num + num)) / (fact(num) * fact(num))).to_s
	total = total.to_s
	return total
end

puts grid_routes(20)


 