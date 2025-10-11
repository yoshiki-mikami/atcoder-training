Q = gets.to_i
querys = []
Q.times { |i| querys << gets.split().map(&:to_i) }

arr = []
A = []

querys.each do |query|
  if query[0] == 1
    arr << query[1]
    next
  end

  if query[0] == 2
    A << arr.first
    arr.shift
    next
  end
end

puts A
