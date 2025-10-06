require 'date'

first = gets.chomp.split(' ').map(&:to_i)

date = Date.new(2019, first[0], first[1]).next_day
puts date.day == 1 ? '1' : '0'
