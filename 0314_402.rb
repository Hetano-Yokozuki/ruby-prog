class Testa
  def initialize(a)
      @a = a 
  end
end

p Testa
p Testa.class

a = Testa
a.new(1)

Testa = 1

p Testa
p Testa.class
