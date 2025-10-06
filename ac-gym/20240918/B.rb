a, b, c = gets.split.map(&:to_i)

max_num = [a, b, c].max
other_num = [a, b, c].min(2)

puts max_num == other_num.sum ? 'Yes' : 'No'
