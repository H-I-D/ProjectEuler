# Project 006
# 0.046[s]

# (1+2+..+n)^2 - 1^2+2^2+..+n^2 = 1*2 + 1*3 + ... + 1*n + 2*1 + 2*3 + ... +2*n + ... + n*(n-1)
n = 100
sum_diff = 0
1.upto(n) { |i| 1.upto(n) { |j| sum_diff += i * j if i != j } }
puts "#{sum_diff}: diff between the sum of the squares of the first #{n} natural numbers and the square of the sum"
