require 'net/http'

class Picture < ApplicationRecord
  def picture_url(grayscale = false)
    gray_option = ''

    if grayscale == 'true'
      gray_option = 'g'
    end

    "https://picsum.photos/#{ gray_option }/400/300?image=#{id}"
  end

  # def self.salve_all
  #   result = Net::HTTP.get('picsum.photos', '/list')
  #
  #   list = JSON.parse(result, symbolize_names: true)
  #
  #   list.each do |item|
  #     create(item.slice(:id, :author, :author_url, :post_url))
  #   end
  # end
end
