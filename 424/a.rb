a, b, c = gets.split.map(&:to_i)

puts [a, b, c].uniq.size < 3 ? "Yes" : "No"