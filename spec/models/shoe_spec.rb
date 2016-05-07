require 'rails_helper'

describe Shoe do
  context 'validations' do
    it { is_expected.to validate_presence_of :name }
    it { is_expected.to validate_presence_of :shoe_code }
    it { is_expected.to validate_presence_of :price }
  end
end