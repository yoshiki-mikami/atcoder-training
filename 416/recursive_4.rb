str_arr = ['A', 'B']
depth = 3

# 繰り返し関数を貯めていく
# 戻ってくる時に戻り値を合算する
# 合算した値を一旦別の変数に格納する
# これをstr_arrの要素数分、繰り返す

def recursive(str_arr, depth, current_str = '', results = [])
  if depth == 0
    results << current_str
    return
  end

  str_arr.each do |s|
    tmp_str = current_str + s
    recursive(str_arr, depth - 1, tmp_str, results)
  end

  results
end

puts recursive(str_arr, depth)