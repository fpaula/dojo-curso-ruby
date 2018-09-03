class Suspiro < Candy
  PRICE_PER_GRAM = 0.5

  # Método que usa os parâmetros nomeados
  # def price
  #   PRICE_PER_GRAM * @weight
  # end

  def price
    PRICE_PER_GRAM * @unit_measurement
  end
end
