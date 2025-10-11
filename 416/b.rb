s = gets.chomp

s_array = s.chars

t_array = []

should_next_hash = false

s_array.each do |s_i|
  if s_i == '#'
    t_array << '#'
    should_next_hash = false
  elsif s_i == '.'
    if should_next_hash
      t_array << '.'
      next
    end
    t_array << 'o'
    should_next_hash = true
  end
end

puts t_array.join
