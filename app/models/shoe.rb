class Shoe < ActiveRecord::Base
  validates :name, presence: true
  validates :shoe_code, presence: true
  validates :price, presence: true

  belongs_to :brand
end