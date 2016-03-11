#Starting in the top left corner of a 2×2 grid, and only being 
#able to move to the right and down, there are exactly 6 routes to the bottom right corner.


# Q: How many such routes are there through a 20×20 grid?

def fact(num)
  if num == 0
    1
  else
    num * fact(num - 1)
  end
end

def grid_routes(num)
	total = (fact((num + num)) / (fact(num) * fact(num)))
	#total = total.to_s
	"Number of routes: #{total.to_s}"
end

puts grid_routes(20)


 