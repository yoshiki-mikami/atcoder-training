n = gets.to_i

# resultsにnを文字連結していく
# 0になったら最後に値を連結しつつ終了
# 全部連結した文字列を返す


# def recursive(n, result = '')
  # if n == 0
  #   result = result + "#{n}"
  #   return result
  # end

  # result = result + "#{n} "
  # recursive(n - 1, result)
# end

def recursive(n)
  return "0" if n == 0
  
  "#{n} " + recursive(n - 1)
end

puts recursive(n)