T = gets.chomp
U = gets.chomp

answer = false

catch(:done) do
  U.chars.each_with_index do |u, i|
    u_size = U.chars.length
    valid_str = Array.new(u_size).map { |_| "?" }.join
    if T.include?(valid_str)
      answer = true
      throw :done
    end

    t_char_indexes = (0...T.chars.size).find_all { |i| T[i] == u }
    next if t_char_indexes.empty?
    # next unless T.include?(u)

    t_char_indexes.each do |t_i|
      start_index = (t_i - i)
      next if start_index < 0

      extract_result = T[start_index, u_size]

      valid = Array.new(u_size).each_with_index.all? do |_, i|
        extract_result[i] == "?" || extract_result[i] == U[i]
      end

      if valid
        answer = true
        throw :done
      end
    end
  end
end

puts answer ? "Yes" : "No"
