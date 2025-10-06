n, a, b = gets.chomp.split.map(&:to_i)

result = 0

n.times do |index|
  num = index + 1
  first_dig = num % 10
  second_dig = (num / 10) % 10
  third_dig = (num / 100) % 10
  fourth_dig = (num / 1000) % 10

  sum = first_dig + second_dig + third_dig + fourth_dig
  result += num if a <= sum && sum <= b
end

puts result
