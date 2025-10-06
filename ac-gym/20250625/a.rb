# n = gets.to_i
# a = gets.split.map(&:to_i)

# count = 0

# 100.times do
#   if a.a.size <= 1
#     break
#   end

#   a.sort!

#   count += 1

#   a[-1] -= 1
#   a[-2] -= 1
#   a.delete(0)
# end

# puts count


n = gets.to_i
a = gets.split.map(&:to_i)

count = 0

loop do
  break if a.size <= 1

  a.sort!
  a[-1] -= 1
  a[-2] -= 1
  a.delete(0)

  count += 1
end

puts count
