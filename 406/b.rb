n, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

calc_val = 1
limit_val = 10 ** k

a.each do |a_i|
  calc_val = calc_val * a_i
  if calc_val / limit_val >= 1
    calc_val = 1
  end
end

puts calc_val / limit_val == 1 ? 1 : calc_val
