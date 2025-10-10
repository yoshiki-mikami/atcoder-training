n = gets.to_i

result = ''

if n % 2 == 0
  # 真ん中に=が二つ、それ以外は-の文字
  start_num = n / 2
  n.times do |n|
    n = n + 1
    if n == start_num || n == start_num + 1
      result += '='
    else
      result += '-'
    end
  end
else
  # 真ん中に=が一つ、それ以外は-の文字
  start_num = n / 2 + 1
  n.times do |n|
    n = n + 1
    if n == start_num
      result += '='
    else
      result += '-'
    end
  end
end

puts result