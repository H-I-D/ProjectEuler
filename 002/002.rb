# Problem 002
# 0.043[s]

# 0, 1, 1, 2, 3, 5, 8, ...
def fibo(n)
	return n if n == 0 || n == 1
	x, y, z, i = 1, 1, 1, 2
	while i < n
		i += 1
		z = x + y
		x = y
		y = z
	end
	return z
end

i = 0
sum_even = 0
while i += 1
	fibo = fibo(i)
	break if fibo > 4000000
	sum_even += fibo%2 == 0 ? fibo : 0
end

puts "sum: #{sum_even}"
