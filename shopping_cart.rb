require_relative 'ten_percent_discount_rule'

class ShoppingCart
  DISCOUNT_RULES = [
    TenPercentDiscountRule,
    FifteenPercentDiscountRule,
    TwentyPercentDiscountRule,
    PizzaDiscountRule
  ]

  def calculate_price(shopping_cart)
    total_price = 0
    total_pizzas = 0
    shopping_cart.each do |item|
      total_price += item[:value]
      total_pizzas += 1 if item[:type] == 'pizza'
    end

    DISCOUNT_RULES.each do |discount_rule|
      total_price = discount_rule.new.total_price(total_price, total_pizzas)
    end

    total_price

    # total = 0
    # pizzas_count  = 0
    #
    # shopping_cart.each do |item|
    #   total += item[:value]
    #
    #   if item[:type] == 'pizza'
    #     pizzas_count += 1
    #   end
    # end
    #
    # if total >= 30
    #   total = total - (0.1 * total)
    # end
    #
    # if pizzas_count >= 2
    #   total = total - 4
    # end
    #
    # total
  end
end
