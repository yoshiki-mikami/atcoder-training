n, k, x = gets.split.map(&:to_i)
s_array = []
n.times { s_array << gets.chomp }

def recursive(s_array:, dep:, tmp_s:, results:)
  if dep == 0
    results << tmp_s
    return
  end

  s_array.each do |s|
    xx = s + tmp_s
    tmp_dep = dep - 1
    recursive(s_array:, dep: tmp_dep, tmp_s: xx, results:)
  end

  return results
end

results = recursive(s_array:, dep: k)
puts results
