def largest_palindrome
	largest_pal = 0
	999.downto(100) do|i|
		i.downto(100) do |j|
			result = i * j
			largest_pal = result if result > largest_pal && result.to_s == result.to_s.reverse
			break if result <= largest_pal
		end
	end
	largest_pal
end 

puts largest_palindrome