n = gets.to_i

nums = [1]
result = 

n.times do |i|
    index = i + 1
    target_nums = nums[...index]

    sum_n = target_nums.sum do |n|
        n.digits.sum
    end

    nums << sum_n
end

puts nums.max