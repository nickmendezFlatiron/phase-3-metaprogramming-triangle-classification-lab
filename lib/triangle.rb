require "pry"
class Triangle
  
  attr_reader :sides
  attr_accessor :kind

  def initialize(s1 , s2 , s3)
    @sides = [s1 , s2 , s3]
  end

  def kind

    bad = self.sides.min <= 0 || sides[0] + sides[1] <= sides[2] ||  sides[1] + sides[2] <= sides[0] ||  sides[0] + sides[2] <= sides[1]  ? true : false

    if self.sides.uniq.count == 3 && bad == false
      self.kind = :scalene
    elsif self.sides.uniq.count == 2 && bad == false
      self.kind = :isosceles
    elsif self.sides.uniq.count == 1 && bad == false
      self.kind = :equilateral
    elsif  bad == true 
      begin
        raise TriangleError
      end 
    end

 
  end
  class TriangleError < StandardError
  end 
end
