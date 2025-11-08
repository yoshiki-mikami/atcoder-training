a, b, c, d = gets.split.map(&:to_i)


if a <= c
    if !(b <= d)
        puts 'Yes';
        return
    end
end

puts 'No';
