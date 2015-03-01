class CreateHardwares < ActiveRecord::Migration
  def change
    create_table :hardwares do |t|
      t.string :vendor
      t.string :model
      t.string :bulletin_url
      t.date :available
      t.date :end_of_sale
      t.date :end_of_support
      t.decimal :price

      t.timestamps
    end
  end
end
