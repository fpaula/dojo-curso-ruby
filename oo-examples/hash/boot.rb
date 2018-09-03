class LetterCounter
  attr_reader :text

  def initialize(text)
    @text = text.downcase
  end

  def occurrences
    @occurrences ||= begin
      hash = {}
      hash.default = 0
      text.chars.each do |letter|
        hash[letter] += 1 if letter != ' '
      end

      hash
    end
  end

  def most_used_letter
    maximum_value = occurrences.values.max
    occurrences.map do |key, value|
      key if value == maximum_value
    end.compact
  end
end

counter = LetterCounter.new('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas non libero vitae metus viverra malesuada. Cras consectetur ac augue id sodales. Morbi condimentum mattis ante vitae molestie. Vivamus bibendum lacus laoreet tellus suscipit tincidunt. Mauris luctus lacus vitae diam dictum efficitur. Maecenas non commodo nunc, sed imperdiet felis. Donec molestie velit pretium ultrices dapibus. Sed quis magna urna. Donec pretium gravida erat, sit amet auctor orci sollicitudin quis. Donec eu tempor urna. Pellentesque egestas faucibus elit, vel fringilla lectus tincidunt in.')

puts counter.occurrences.inspect
puts counter.most_used_letter.inspect
