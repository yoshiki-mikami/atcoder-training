n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

sum = a.sum
puts m >= sum ? "Yes" : "No"
