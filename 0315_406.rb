class Abc
  def initialize(a)
      @a = a 
  end
  def pr
      p @a
  end
end

class Bcd < Abc
  def initialize(a,b)
      @b = b
      super a
  end
  def pri
      p @a
      p @b
  end
end

a = Abc.new(1)
a.pr

b = Bcd.new(2,3)
b.pri
