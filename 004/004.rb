# Problem 004
# 0.050[s]

palindromic_numbers = []
999.downto(900){|i| 999.downto(900){|j| num_str = (i*j).to_s; palindromic_numbers << num_str if num_str.reverse == num_str } }
puts "#{palindromic_numbers.max_by {|num| num.to_i}}: the larget palindrome made from the product of two 3-digit numbers"
