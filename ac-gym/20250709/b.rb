n = gets.to_i
a = gets.split.map(&:to_i)

results = []

(0...a.max).each do |x|
  x_count = 0
  a.each do |num2|
    x_count += 1 if num2 >= x
  end
  results << x if x == x_count
end

puts results.max
