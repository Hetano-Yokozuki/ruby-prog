class Foo
  def initialize(a)
      @a = a
  end
  def methoda
      @a
  end
end

foo1 = Foo.new(1)
p foo1.methoda
