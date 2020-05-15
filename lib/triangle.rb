#sum of the lengths of any two sides of a triangle always exceeds the length of the third side

class Triangle

  def initialize(side_1, side_2, side3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

#should raise a custom error, TriangleError if the triangle is invalid
#returns, as a symbol, its type. The valid types are :equilateral :isosceles :scalene
  def kind
    if one + two + three != 180
      raise TriangleError
    elsif 
      (side_1 == side_2) && (side_2 == side_3)
      :equilateral
    elsif 
      (side_1 == side_2) && (side_3 < side_1)
      :isosceles
    elsif 
      (side_1 !== side_2) && (side_2 !== side_3)
      :scalene
  #   begin
  #   raise error
  # rescue
  # end

  end

  class TriangleError < StandardError
    def message

      #scalene - has no equal sides: side_1 != side_2 && side_1 !== side_3 && side_2 !== side_3
      #isosceles - has two equal sides
      #equilateral - three equal sides
      if
    end

  end
end
