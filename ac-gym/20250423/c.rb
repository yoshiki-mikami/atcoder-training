A, B = gets.split.map(&:to_i)

# A 8%
# B 10%

# a_base = A * 100 / 8
# b_base = B * 10

# 1. 0.08掛けして、Aの金額になる元数字の配列を集める
# 2. 0.10賭けして、Bの金額になる元数字の配列を集める
# 3. AとBを比較して、一致する数字の最小の値を出力する

def distinct(array)
  binding.irb
  array.select { |v| array.count(v) > 1 }.uniq
end

mod = (100 / 0.08).to_i

a_array = []
b_array = []

mod.times do |i|
  i += 1
  a_base = i * 100 / 8
  b_base = i * 10
  # A...(A + 1)
  if (a_base * 0.08) >= A && (a_base * 0.08) < (A + 1)
    a_array << a_base
    binding.irb
  end
  # B...(B + 1)
  if (b_base * 0.1) >= B && (b_base * 0.1) < (B + 1)
    b_array << b_base
    binding.irb
  end
  puts i
end

a_array = a_array.map(&:to_i)
b_array = b_array.map(&:to_i)
new_array = distinct(a_array + b_array)

puts new_array.min