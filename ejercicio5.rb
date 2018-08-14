module Herviboro
  Definir = 'Sólo me alimento de vegetales!'

  def self.definir
    Definir
  end

  def dieta
    "Soy un Herviboro!"
  end
end

class Animal
  include Herviboro
  def saludar
    "Soy un animal!"
  end
end

class Conejo < Animal
  def initialize(name)
    @name = name
  end
end

conejo = Conejo.new('Bugs Bunny')
puts conejo.saludar
puts conejo.dieta
puts Herviboro.definir
