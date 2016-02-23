# Problem 007
# 0.136[s]

# 0 => 2, 1 => 3, ... , 10000 => 10001st prime number
require 'prime'
p Prime.each_with_index.find {|e, index| index == 10000 }[0]
