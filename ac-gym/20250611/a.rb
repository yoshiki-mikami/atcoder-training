N, X = gets.split.map(&:to_i)
m = []
N.times do
  m << gets.to_i
end

min_m = m.min

quota = X - m.sum

donuts_count = m.size

donuts_count = donuts_count + (quota / min_m)

puts donuts_count