# Problem 003

# 0.044[s]

require 'prime';
factors = 600851475143.prime_division
p factors.max_by {|factor| factor[0]} [0]
