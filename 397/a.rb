x = gets.to_f

if x >= 38.0
  puts '1'
elsif x >= 37.5 && x < 38.0
  puts '2'
elsif x < 37.5
  puts '3'
end
