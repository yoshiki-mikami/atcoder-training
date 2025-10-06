N, Q = gets.chomp.split(' ').map(&:to_i)
S = gets.chomp

l = []
r = []

Q.times do |q|
  tmp = gets.chomp.split(' ').map(&:to_i)
  l << tmp[0]
  r << tmp[1]
end

puts N
puts Q
puts S
puts l
puts r
