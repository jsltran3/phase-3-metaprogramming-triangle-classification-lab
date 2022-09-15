class Triangle
  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  #elsif has a condition associated with it
  #helper method put at the top to validate tirangle
  def kind 
    side_error_validate
    sides = [side1, side2, side3].sort

      if (sides[0] == sides[1]) && (sides[0] == sides[2])
        return :equilateral 
      elsif sides[0] == sides[1] || sides[1] == sides[2] || sides[1] == sides[3]
        return :isosceles 
      else
        return :scalene
      end
      # begin
      #   raise.PartnerError

  end 

  #attr gives us access to the instance variable and therefore we don't have to use the @ symbol
  def check_size_more_than_zero?
    side1 > 0 && side2 > 0 && side3 > 0
#possible assessemnt: don't need the else/if if we meet the condition BECAUSE THERE'S an implicit true if it meets
  end
#you wanna use a ? if checking something is true or false. thats the whole point of those two helper methods. JUST NEED a booleon
  def greater_side_check?
    (side1 + side2 > side3) && (side1+ side3 > side2) && (side2 + side3 > side1)
  end 
#you wanna use a ? if checking something is true or false. thats the whole point of those two helper methods. JUST NEED a booleon
  def side_error_validate
    raise TriangleError unless check_size_more_than_zero? &&  greater_side_check?
  end

  class TriangleError < StandardError
    # def message
    #   "triangle error or something"
    # end
  end 
end
