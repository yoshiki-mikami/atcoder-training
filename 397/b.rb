s = gets.chomp

# sample
# ioi
# iioo
# io

# ioioの形になるように文字を挿入し、文字数を答える

# 一つ前の文字列を持っておき、現在と異なるかを調べる
# - 同じ場合
#   カウントを追加する
# - 共通
#   一つ前の文字には自分を代入

# ↑だと最初がo、最後が「i」だった場合にダメになるので、そこは先に作る

result_count = 0

if s.chars[0] == 'o'
  s = "i + #{s}"
  result_count += 1
end

if s.chars[-1] == 'i'
  s = "#{s} + o"
  result_count += 1
end

prev_str = s.chars[0]

s.chars.each.with_index do |s, i|
  next if i == 0

  if prev_str == s
    result_count += 1
  end

  prev_str = s
end

puts result_count
