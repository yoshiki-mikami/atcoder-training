h, b = gets.split.map(&:to_i)

if b >= h
    puts 0
else
    puts h - b
end

