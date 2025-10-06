N = gets.to_i

sum = N.digits.sum

puts N % sum == 0 ? 'Yes' : 'No'