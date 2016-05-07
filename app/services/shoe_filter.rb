class ShoeFilter
  include ActiveModel::Conversion
  extend  ActiveModel::Naming

  attr_accessor :brand_ids, :price_from, :price_to

  def initialize(option)
    return if option.nil?
    @brand_ids     = option[:brand_ids]
    @price_from   = option[:price_from].to_f
    @price_to     = option[:price_to].to_f
  end

  def result
    shoes = Shoe.all
    shoes = shoes.find_by_brand_ids(brand_ids) if brand_ids.present?
    shoes = shoes.find_by_price_from(price_from) if price_from.present?
    shoes = shoes.find_by_price_to(price_to) if price_to.present?
    shoes
  end

  def persisted?
    false
  end
end