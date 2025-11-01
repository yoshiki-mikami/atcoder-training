n, m = gets.split.map(&:to_i)

n.times do |i|
    num = i
    puts m > i ? "OK" : "Too Many Requests"
end