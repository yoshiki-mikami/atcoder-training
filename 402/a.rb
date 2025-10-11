S = gets.chomp

s_arr = S.chars.filter { |s| s.match(/[A-Z]/) }

puts s_arr.join
