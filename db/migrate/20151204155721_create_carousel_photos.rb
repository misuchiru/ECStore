class CreateCarouselPhotos < ActiveRecord::Migration
  def change
    create_table :carousel_photos do |t|
      t.integer :carousel_id
      t.string :image

      t.timestamps null: false
    end
  end
end
