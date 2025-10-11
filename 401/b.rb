n = gets.to_i
s_arr = []
n.times { |n| s_arr << gets.chomp }

is_login = false
count = 0

s_arr.each do |s|
  is_login = true if s == "login"
  is_login = false if s == "logout"
  count += 1 if !is_login && s == "private"
end

puts count
