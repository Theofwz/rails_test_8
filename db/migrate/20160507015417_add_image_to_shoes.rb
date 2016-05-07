class AddImageToShoes < ActiveRecord::Migration
  def up
    add_attachment :shoes, :image
  end

  def down
    remove_attachment :shoes, :image
  end
end
