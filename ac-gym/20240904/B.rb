S = gets.chomp

# commencement

# {
#   c: 2,
#   o: 1,
#   m: 3,
#   e: 3,
#   n: 2,
#   t: 1
# }

def safe_invert(orig_hash)
  orig_hash.each_key.group_by do |key|
    orig_hash[key]
  end
end

hash = {}
result = false

S.each_char do |s, i|
  if i == 0
    hash[s] += 1
    next
  end

  hash.key?(s) ? hash[s] += 1 : hash[s] = 1
end

hash = safe_invert(hash)

result = hash.all? do |_key, value|
  value.size.zero? || value.size == 2
end

puts result ? 'YES' : 'NO'

# commencement
