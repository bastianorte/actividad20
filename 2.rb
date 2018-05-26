module Formula
  def perimetro
  (@base+@altura)*2
  end
  def area
    @base*@altura
  end
end

class Rectangulo
attr_accessor :base , :altura
  include Formula
  def initialize(base, altura)
    @base = base
    @altura = altura
  end
  def lados
    puts @base
    puts @altura
  end
end

class Cuadrado
    attr_accessor :lado
      include Formula
  def initialize(lado)
    @lado = lado
    @base = lado
    @altura = lado
  end
  def lados
    puts @lado
  end
end

puts Cuadrado.new(3).perimetro
puts Rectangulo.new(2,3).perimetro
puts Cuadrado.new(3).area
puts Rectangulo.new(2,3).area
