N = gets.chomp.to_i

result = ''

result = if (N * 1.08).floor < 206
           'Yay!'
         elsif (N * 1.08).floor == 206
           'so-so'
         else
           ':('
         end

puts result
