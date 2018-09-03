class Candy
  # construtor com parâmetros nomeados (kargs)
  # def initialize(quantity: 1, weight: 100)
  #   @quantity = quantity
  #   @weight = weight
  # end

  def initialize(unit_measurement = 0)
    @unit_measurement = unit_measurement
  end
end
