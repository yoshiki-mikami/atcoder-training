n, q = gets.split.map(&:to_i)
a_array = gets.split.map(&:to_i)
b_array = gets.split.map(&:to_i)

min_array = n.times.map do |i|
	[a_array[i], b_array[i]].min
end
min_sum = min_array.sum

q.times do |i|
	temp_array = gets.split
	c = temp_array[0]
	x = temp_array[1].to_i
	v = temp_array[2].to_i
	x_index = x - 1

	before = min_array[x_index]

	pair_value = nil
	if c == "A"
		a_array[x_index] = v
		pair_value = b_array[x_index]
	end

	if c == "B"
		b_array[x_index] = v
		pair_value = a_array[x_index]
	end

	after = [v, pair_value].min
	min_array[x_index] = after
	min_sum = min_sum - before + after

	puts min_sum
end