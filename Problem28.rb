# Starting with the number 1 and moving to the right in a clockwise 
# direction a 5 by 5 spiral is formed as follows:

# 21 22 23 24 25
# 20  7  8  9 10
# 19  6  1  2 11
# 18  5  4  3 12
# 17 16 15 14 13

# It can be verified that the sum of the numbers on the diagonals is 101.

# Q: What is the sum of the numbers on the diagonals in a 1001 by 1001 spiral formed in the same way?


def sum_of_diagonal_nums(num)
	sum_of_diagonals = 1
	 
	(3..num).step(2).each do |i|
	  i_squared = i * i
	 
	  sum_of_diagonals += i_squared + (i_squared - i + 1) + (i_squared - 2*i + 2) + (i_squared - 3*i + 3)
	  puts "The respective diagonal nums for: " + i_squared.to_s + " " + (i_squared - (i + 1)).to_s + " " + (i_squared - (2*i + 2)).to_s + " " + (i_squared - (3*i + 3)).to_s
      puts "The sum running sum is: " + sum_of_diagonals.to_s
	  
	end
	 
	"The sum of the diagonal is: #{sum_of_diagonals}"
end

puts sum_of_diagonal_nums(1001)
