require 'rails_helper'

describe ShoeFilter do
  describe '#result' do
    let!(:brand)             { create(:brand, title: 'Nike') }
    let!(:shoe)             { create(:shoe, name: 'X-Men', price: 10, brand: brand) }

    it 'returns a list of shoes found' do
      shoes = ShoeFilter.new(brand_ids: brand.id, price_to: 10).result
      
      expect(shoes).to include shoe
    end
  end
end