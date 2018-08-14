class Vehicle
  def initialize(model, year)
    @model = model
    @year = year
    @start = false
  end

  def engine_start
    @start = true
  end
end

class Car < Vehicle
  @@counter = 0
  def initialize(model, year)
    super
    @@counter += 1
  end

  def self.contador
    @@counter
  end

  def engine_start
    super
    '¡El motor se ha encendido!'
  end
end


10.times { Car.new('x', 'y') }
c = Car.new('Toyota', '2010')
puts c.engine_start
puts Car.contador
