class Chocolate < Candy
  UNITY_PRICE = 2.0

  # Método que usa os parâmetros nomeados
  # def price
  #   UNITY_PRICE * @quantity
  # end

  def price
    UNITY_PRICE * @unit_measurement
  end
end
