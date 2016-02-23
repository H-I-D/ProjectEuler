# Problem 504
# 1[m]28[s]

# def get_area(a, b, c, d)
#   return (a+c) * (b+d) / 2
# end

# def get_LP_side(a, b, c, d)
#   return a.gcd(b) + b.gcd(c) + c.gcd(d) + d.gcd(a)
# end

# Pick's theorem
# def get_LP(area, lp_side)
#   return area - lp_side/2 + 1
# end

def is_square(a, b, c, d)
  lp_contains = ((a+c)*(b+d)/2) - (a.gcd(b) + b.gcd(c) + c.gcd(d) + d.gcd(a)) / 2 + 1
  return Math.sqrt(lp_contains).to_i ** 2 == lp_contains
end

# m = 100
print 'input m: '
m = gets.to_i;
lp_square = 0  # answer
1.upto(m){|a| 1.upto(m){|b| 1.upto(m){|c| 1.upto(m){|d| lp_square += 1 if is_square(a,b,c,d) } } } }
puts "#{lp_square} quadrilaterals strictly contain a square number of lattice points in m = #{m}"
