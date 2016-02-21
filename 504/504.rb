# Problem 504

# 1[m]30[s]

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

# print 'input m: '
# m = gets.to_i;
m = 100
# quadrilaterals_all = m ** 4  # (m - 1 + 1) ** 4

lp_square = 0  # answer
for a in 1..m do
  for b in 1..m do
    for c in 1..m do
      for d in 1..m do
        lp_square += 1 if is_square(a, b, c, d)
      end
    end
  end
end

puts "#{lp_square} quadrilaterals strictly contain a square number of lattice points in m = #{m}"
