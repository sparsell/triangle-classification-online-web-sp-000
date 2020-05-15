#sum of the lengths of any two sides of a triangle always exceeds the length of the third side

class Triangle

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

#returns, as a symbol, its type. The valid types are :equilateral :isosceles :scalene
#scalene - has no equal sides: side_1 != side_2 && side_1 !== side_3 && side_2 !== side_3
#isosceles - has two equal sides
#equilateral - three equal sides

#should raise a custom error, TriangleError if the triangle is invalid
  def kind
    if (side_1 + side_2 + side_3) != 180 #triangles violating triangle inequality are illegal
      begin
        raise TriangleError
      rescue TriangleError => error
        puts error.message
      end
    elsif
      (side_1 == side_2) && (side_2 == side_3)
      :equilateral
    elsif
      (side_1 == side_2) && (side_3 < side_1)
      :isosceles
    elsif
      (side_1 != side_2) && (side_2 != side_3)
      :scalene
    else
  #
    end
  end

  class TriangleError < StandardError
    def message



    #   if
    # end

    end
  end
end
