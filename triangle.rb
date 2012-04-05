# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  array = [a,b,c]
  max = array.max
  min = array.min
  if array.min <= 0
    raise TriangleError.new("zero or negative length sides not permitted")
  end
  sum_of_two_sides = array.inject(:+) - max
  if sum_of_two_sides <= max
    raise TriangleError.new("sum of two sides must be > biggest side")
  end

  if (a != b) && (b != c) && (a != c)
    return :scalene
  elsif (a == b) && (b == c) && (a == c) && (a != 0)
    return :equilateral
  else
   return :isosceles
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
