class CreatePhysicalSecurities < ActiveRecord::Migration
  def change
    create_table :physical_securities do |t|
      t.string :device
      t.boolean :environment
      t.boolean :cabinet

      t.timestamps
    end
  end
end
