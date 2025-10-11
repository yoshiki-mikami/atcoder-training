

# nを引いていって、1になるまで積む
# 1になったらnをreturnする
# 再帰には返り値を掛け算で突っ込むようにしとくと、1 * 2 * 3 * 4 * 5で結果を出せる
def factorial(n)
  return n if n == 1

  n * factorial(n - 1)
end



puts factorial 7
# 120