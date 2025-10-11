A, B = gets.split.map(&:to_i)

just_num = (A / B) * 100
strict_num = (A * 100) / B

diff = strict_num - just_num

add = diff < 50 ? 0 : 100

puts (just_num + add) / 100
