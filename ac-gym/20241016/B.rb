S = gets.chomp

ACGT_STR = %w[A C G T]

# 'ATCODER'って文字列から01の文字列を作る

result = []

S.each_char do |c|
  result << if ACGT_STR.include?(c)
              [c, '1']
            else
              [c, '0']
            end
end

binding.irb

deleted_at_list = []

S.each_char.with_index do |c, i|
  deleted_at_list << i if result[i][1] == '0'
end

deleted_at_list.each do |i|
  result.delete_at i
end

puts result
