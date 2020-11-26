require 'pry'

class Triangle

  attr_accessor :a, :b, :c


  def initialize(a, b, c)
    @sides = []
    self.a = a
      @sides << self.a
    self.b = b
      @sides << self.b
    self.c = c
      @sides << self.c
  end

  def kind
    if @sides.any?{|i| i == 0}
      raise TriangleError
    elsif @sides.any?{|i| i < 0}
      raise TriangleError
    elsif a + b <= c || b + c <= a || a + c <= b
      raise TriangleError
    elsif @sides.uniq.length == 1
      :equilateral
    elsif @sides.uniq.length == 2
      :isosceles
    elsif @sides.uniq.length == 3
      :scalene
    end
  end

  class TriangleError < StandardError
    
  end

end
