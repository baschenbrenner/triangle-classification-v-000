class Triangle
  attr_accessor :side1, :side2, :side3


  def initialize(side1,side2,side3)
    if side1<0 || side2<0 || side3<0
        raise TriangleError
    else
      
      @side1=side1
      @side2=side2
      @side3=side3
    end

    
  end

  def kind

    side_array=[]
    side_array <<side1
    side_array <<side2
    side_array <<side3

    if side_array.uniq.length == 1
      return :equilateral
    elsif side_array.uniq.length == 2
      return :isosceles
    elsif  side_array.uniq.length == 3
      return :scalene
    end
  end


end


class TriangleError < StandardError
end
