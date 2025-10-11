X, Y = gets.split.map(&:to_i)

exactly_count = 0

6.times do |num1|
  dice_1 = num1 + 1
  6.times do |num2|
    dice_2 = num2 + 1
    sum = dice_1 + dice_2
    abs = (dice_1 - dice_2).abs

    if sum >= X || abs >= Y
      exactly_count += 1
    end
  end
end

answer = exactly_count.to_f / (6 ** 2).to_f
answer = answer.to_i if answer == 1.0 || answer == 0.0

puts answer
