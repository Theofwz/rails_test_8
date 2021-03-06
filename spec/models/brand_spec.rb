require 'rails_helper'

describe Brand do
  context 'validations' do
    it { is_expected.to validate_presence_of :title }
  end

  context 'Association' do
    it { is_expected.to have_many :shoes }
  end
end