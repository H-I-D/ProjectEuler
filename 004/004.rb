# Problem 004

# 0.048[s]

palindromic_numbers = []
catch :finish do
	for i in -999..-900
		for j in -999..-900
			num_str = (i * j).to_s
			palindromic_numbers.push(num_str) if num_str.reverse == num_str
		end
	end
end
puts "#{palindromic_numbers.max_by {|num| num.to_i}}: the larget palindrome made from the product of two 3-digit numbers"
