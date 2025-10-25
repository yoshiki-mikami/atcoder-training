
n, k = gets.split.map(&:to_i)
s = gets.chomp

# 1文字目からk個ずつ文字列を一つずつずらしながら取得。
# ↑の重複を調べる

s_chars = s.chars

results = []

n.times do |i|
    break if n <= (i + k - 1)
    results << s_chars[i..(i + k - 1)]
end

results = results.map { |result| result.join }
uniq_str_list = results.select{|v| results.count(v) > 1}.uniq

hash = results.tally
max_value = hash.values.max
result_list = []
hash.each do |hash|
    next unless uniq_str_list.include?(hash[0])

    if hash[1] == max_value
        result_list << hash[0]
    end
end

puts max_value
puts result_list


