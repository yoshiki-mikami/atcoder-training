n = gets.to_i

# def f(n)
#   if n == 0
#     return 0
#   end

#   if n == 1
#     return 1
#   end

#   if n > 1
#     resultsの配列が必要
#     (n)をindexとして、(n - 1)と(n - 2)を合算しないと結果が出せない
#   end
# end

def fibonacci(n, arr = [])
  if n == 0
    arr[0] = 0
    return arr
  end

  if n == 1
    arr[0] = 0
    arr[1] = 1
    return arr
  end

  fibonacci(n - 1, arr)
  arr[n] = arr[n - 1] + arr[n - 2]
  return arr
end

# def fibonacci(n)
#   return 0 if n == 0
#   return 1 if n == 1

#   fibonacci(n - 1) + fibonacci(n - 2)
# end

# わからんポイント
# ・arrに全て突っ込んだ後にどうやって元の6だけを出力するか

results = fibonacci(n)

puts results[n]