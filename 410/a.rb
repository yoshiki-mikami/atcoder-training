N = gets.to_i
A = gets.split.map(&:to_i)
K = gets.to_i

# KがAn才以下かを調べて、合計を出す

result = A.filter do |age|
  K <= age
end

puts result.count
