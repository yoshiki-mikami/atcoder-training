N, Q = gets.split.map(&:to_i)
X = gets.split.map(&:to_i)

# Nは箱
# Qはボールの個数
# A = 箱の何番目にボール入れるかの規則が入った配列

# Xiが1以上の場合は箱に入れる
# 0の場合、現在入っているボールが最も少ない箱のうち番号が最小である箱に入れる。

# 回答は、ボールを箱に入れていき、入れた箱のインデックス順を出す


# 規則が入ったXでループを回して、それが0or1以上かを都度調べる
  # 1以上だった場合、Xiの数値をresultに入れつつ、N[Xi]のカウントをひとつ増やす
  # 0だった場合、N[min]のカウントをひとつ増やしつつ、N[min]のインデックス番号をresultに入れる
  # N[min]（どうやって出すんだろう？2重ループになっちゃう）
# resultをそのまま出力

# boxes = {}
# N.times { |n| boxes[n + 1] = 0  }

boxes = []
N.times { |n| boxes << 0 }

result = []

X.each do |x|
  if x == 0
    min = boxes.min
    boxes.each.with_index do |n, i|
      if n == min
        boxes[i] += 1
        result << i + 1
        break
      end
    end
  else
    boxes[x - 1] += 1
    result << x
  end
end

puts result
