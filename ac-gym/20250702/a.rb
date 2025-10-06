n = gets.to_i
h = gets.split.map(&:to_i)

x = h[0]
result = nil

h.each.with_index do |height, i|
  if x < height
    result = i + 1
    break
  end
end

puts result ? result : "-1"