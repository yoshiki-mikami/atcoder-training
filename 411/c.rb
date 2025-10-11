n, q = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

# 左からAi番目マスの色をひっくり返していって、
# その時点で黒が連続している区間の数を出力していく
# 白を0, 黒を1としていくと分かりやすそう。n個の「0」が入った配列を準備してそれをいじっていくイメージ？
# nの中でaをループしたら10**11なんでアウト。

# 一旦計算量を考えずに処理の手順を記す

# 1. nの要素数の0の配列を準備する
# 2. Aiの指定した番号 - 1(配列のインデックス番号)の値を反転させる（0→1 or 1→0）
# 3. 2.の結果、1が連続する区間数を出力する（普通にやるとここが重そう）
# 4. これを最大5*(10**5)回数繰り返す

bits = []
n.times { bits << 0 }

indexes = []
segments = 0

a.each do |a_i|
  i = a_i - 1
  current_bit = bits[i]
  bits[i] ^= 1

  # 現在が1の時、左右が両方白ならセグメント+1、
  # 左右が黒ならセグメントマイナス-1
  # 左だけ白、右が黒の場合は、変わらず

  left_black = (i > 0 && bits[i - 1] == 1)
  right_black = (i < n - 1 && bits[i + 1] == 1)

  if bits[i] == 1
    if !left_black && !right_black
      black_segments += 1
    elsif left_black && right_black
      black_segments -= 1
    end
  else
    # 白にしたとき（黒から反転）
    if !left_black && !right_black
      black_segments -= 1
    elsif left_black && right_black
      black_segments += 1
    end
  end

  puts segments
end
