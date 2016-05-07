require 'rails_helper'

describe ShoeFilter do
  describe '#result' do
    let!(:brand)             { create(:brand, title: 'Nike') }
    let!(:shoe)             { create(:shoe, name: 'X-Men', brand: brand) }

    it 'returns a list of shoes found' do
      shoes = ShoeFilter.new(brand_ids: [brand.id]).result
      expect(shoes).to include shoe
    end
  end
end