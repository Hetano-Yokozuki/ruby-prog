class Testa
  def initialize(a)
      @a = a 
  end
end

p Testa
p Testa.class

a = Testa
a.new(1)

b = Testa.new(1)
p b.class == Testa
