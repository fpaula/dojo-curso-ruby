class Bomboniere
  attr_reader :candies

  def initialize(candies)
    @candies = candies
  end

  # def total_price
  #   # Isto é um memoize
  #   @total_price ||= begin
  #     puts 'calculando preço...'
  #     price = 0
  #     candies.each do |candy|
  #       price += candy.price
  #     end
  #     puts 'done!'
  #     price
  #   end
  # end

  # Com reduce
  # def total_price
  #   candies.reduce(0) do |total, candy|
  #     total += candy.price
  #   end
  # end

  # Com reduce magia negra
  def total_price
    candies.map(&:price).reduce(&:+)
  end
end
