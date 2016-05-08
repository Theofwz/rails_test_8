require 'rails_helper'

describe Shoe do
  context 'validations' do
    it { is_expected.to validate_presence_of :name }
    it { is_expected.to validate_presence_of :shoe_code }
    it { is_expected.to validate_presence_of :price }
    it { is_expected.to validate_numericality_of(:price).is_greater_than_or_equal_to(0) }
  end

  context 'Associations' do
    it { is_expected.to belong_to :brand }
  end

  describe '#find by brand ids' do
    let! (:nike) { create(:brand, title: 'Nike') }
    let! (:shoe) { create(:shoe, name: 'Nike for men', brand: nike) }

    it 'show shoe have brand is nike' do
      result = Shoe.find_by_brand_ids([nike.id])

      expect(result).to include shoe
    end
  end

  describe '#find by price from' do
    let! (:print) { create(:shoe, name: 'print', price: 10) }

    it 'shoe reult is print' do
      result = Shoe.find_by_price_from(10)

      expect(result).to include print
    end
  end
end