class Shoe < ActiveRecord::Base
  validates :name,          presence: true
  validates :shoe_code,     presence: true
  validates :price,         presence: true
  validates :price,         numericality: { greater_than_or_equal_to: 0 }, allow_blank: true


  belongs_to :brand

  has_attached_file :image, default_url: "/assets/shoes/nike_flex.jpg"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  def self.find_by_brand_ids(brand_ids)
    where(brand: brand_ids)
  end

  def self.find_by_price_from(price_from)
    where('price >= ?', price_from )
  end

  def self.find_by_price_to(price_to)
    where('price <= ?', price_to )
  end

end