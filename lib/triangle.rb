#sum of the lengths of any two sides of a triangle always exceeds the length of the third side

class Triangle

  def initialize(one, two, three)

  end

#should raise a custom error, TriangleError if the triangle is invalid
#returns, as a symbol, its type. The valid types are :equilateral :isosceles :scalene
  def kind
    #if one + two + three != 180
    begin
    raise error
  rescue
  end

  end

  class TriangleError < StandardError

  end
end
