# Problem 001

# 0.077[s]

sum = 0
for i in 1..999 do
  sum += i if i%3 == 0 || i%5 == 0 && i%15 != 0
end

puts "Sum: #{sum}"
