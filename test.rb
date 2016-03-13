require 'mathn'
 
max = 0
product = 0
 
(-1_000..1_000).each do |a|
  (1..1_000).each do |b|
    n = 0
 
    while (((n ** 2) + (a * n) + b).prime?)
      n+=1
    end
 
    # Or this is kind of cool
    # n += 1 until (!((n ** 2) + (a * n) + b).prime?)
 
    max, product = n, a * b if (n > max)
  end
end
 
puts max
puts product