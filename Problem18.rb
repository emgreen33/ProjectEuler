#By starting at the top of the triangle below and moving to adjacent numbers 
#on the row below, the maximum total from top to bottom is 23.

#3
#7 4
#2 4 6
#8 5 9 3

#That is, 3 + 7 + 4 + 9 = 23.

#Q: Find the maximum total from top to bottom of the triangle below:

a = 
"75
95 64
17 47 82
18 35 87 10
20 04 82 47 65
19 01 23 75 03 34
88 02 77 73 07 63 67
99 65 04 28 06 16 70 92
41 41 26 56 83 40 80 70 33
41 48 72 33 47 32 37 16 94 29
53 71 44 65 25 43 91 52 97 51 14
70 11 33 28 77 73 17 78 39 68 17 57
91 71 52 38 17 14 91 43 58 50 27 29 48
63 66 04 68 89 53 67 30 73 16 69 87 40 31
04 62 98 27 23 09 70 98 73 93 38 53 60 04 23"

#splits data blocks onto newlines 
def max_total(data)
   rows = data.split("\n") 

   #split rows and convert to integers
   triangle = rows.map { |x| x.split(" ").map { |x| x.to_i } }

   #go through each triangle's integer row starting at the end (bottom of triangle)
   (triangle.length - 1).downto(0) { 
   |a| 0.upto(a-1) { #go through each integer in row starting at the first up to the end (a-1)
      |b| triangle [a-1][b] += [triangle [a][b], triangle [a][b+1]].max #add b and (b+1) to a on row below to and find the max pair on above row
      }  
   }

   "Maximum total is: #{triangle[0][0]}" #puts total of maximum path up to row[0] index[0]
end

puts max_total(a)



