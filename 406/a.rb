a, b, c, d = gets.split.map(&:to_i)

close = "#{a.to_s.rjust(2, '0')}#{b.to_s.rjust(2, '0')}".to_i
proposal = "#{c.to_s.rjust(2, '0')}#{d.to_s.rjust(2, '0')}".to_i

puts proposal < close ? 'Yes' : 'No'
