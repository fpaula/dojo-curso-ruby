class TenPercentDiscountRule
  def total_price(value, pizzas_count)
    return value if value >= 60

    if value >= 30
      value = value - (0.1 * value)
    end

    value
  end
end

class FifteenPercentDiscountRule
  def total_price(value, pizzas_count)
    return value if value >= 90

    if value >= 60
      value = value - (0.15 * value)
    end

    value
  end
end

class TwentyPercentDiscountRule
  def total_price(value, pizzas_count)
    if value >= 90
      value = value - (0.2 * value)
    end

    value
  end
end

class PizzaDiscountRule
  MIN_PIZZAS = 2

  def total_price(value, pizzas_count)
    if pizzas_count >= MIN_PIZZAS
      value = value - 4
    end

    value
  end
end

#
# class MaxPizzasDiscount
# end
