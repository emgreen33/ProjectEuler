

def fact(num)
  if num == 0
    1
  else
    num * fact(num - 1)
  end
end

def grid_routes(num)
	total = (fact((num + num)) / (fact(num) * fact(num)))
	total = total.to_s
end

puts grid_routes(20)


 