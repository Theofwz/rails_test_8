class Shoe < ActiveRecord::Base
  validates :name, presence: true
  validates :shoe_code, presence: true
  validates :price, presence: true

  belongs_to :brand

  has_attached_file :image, default_url: "/assets/shoes/nike_flex.jpg"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

end