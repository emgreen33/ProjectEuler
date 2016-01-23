What is the greatest product of four adjacent numbers in the 
same direction (up, down, left, right, or diagonally) in the 20×20 grid?

def greatest_product(grid, num)
	max_prod = 1
	width, height = grid.length(), grid[0].length()
	0.upto(width-1) do |i|
		0.upto(height-1) do |j|

			#left to right, right to left
			if (j + (num - 1) < height)
				cell_product = 1
				m = j
				while (m max_prod)
					max_prod = cell_product
				end
			end


			#up and down
			if (i + (num - 1) < width)
				cell_product = 1
				m = i
				while (m max_prod)
					max_prod = cell_product
				end
			end

			#diagonal left to right
			if ((i + (num - 1) < width) && (j + (num - 1) < height))
				cell_product = 1
				m = 0
				while (m max_prod)
					max_prod = cell_product
				end
			end

			#diagonal right to left
			if ((i + (num - 1) < width) && (j - (num - 1) >= 0)
				cell_product = 1
				m = 0
				while (m max_prod)
					max_prod = cell_product
				end
			end
		end
	end

	return max_prod
end
