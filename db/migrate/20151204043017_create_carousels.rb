class CreateCarousels < ActiveRecord::Migration
  def change
    create_table :carousels do |t|
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
