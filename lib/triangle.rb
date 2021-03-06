class Triangle
  # write code here
  attr_reader :side1, :side2, :side3

  def initialize (side1, side2, side3)
    @side1=side1
    @side2=side2
    @side3=side3
  end

  def kind

    #if (side1<=0 || side2<=0 || side3<=0 || (side1+side2<=side3) || (side2+side3<=side1) || (side3+side1<=side2))

    #instead of using a long conditional statement, using methods instead
    if less_than_or_equal_to_zero || side_sum
      raise TriangleError
    elsif (side1==side2 && side2==side3)
      :equilateral
    elsif (side1==side2 || side2==side3 || side1==side3)
      :isosceles
    else
      :scalene
    end
  end

  def less_than_or_equal_to_zero
    side1 <=0 || side2 <=0 || side3<=0
  end

  def side_sum
    (side1+side2<=side3) || (side2+side3<=side1) || (side3+side1<=side2)
  end

  class TriangleError < StandardError
    def message
      "Based on the lengths of the triangle, the triangle is not valid."
    end
  end


end
