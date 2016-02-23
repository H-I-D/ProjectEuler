# Problem 001
# 0.077[s]

sum = 0
1.upto(999){|i| sum += i if i%3 == 0 || i%5 == 0 && i%15 != 0 }
puts "Sum: #{sum}"
