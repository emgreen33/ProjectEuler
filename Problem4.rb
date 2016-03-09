# A palindromic number reads the same both ways. The largest palindrome made from the product 
# of two 2-digit numbers is 9009 = 91 × 99.
# Find the largest palindrome made from the product of two 3-digit numbers.


def largest_palindrome
	largest_pal = 0
	999.downto(100) do|i|
		i.downto(100) do |j|
			result = i * j
			largest_pal = result if result > largest_pal && result.to_s == result.to_s.reverse
			break if result <= largest_pal
		end
	end
	"Largest Palindrome: #{largest_pal}"
end 

puts largest_palindrome