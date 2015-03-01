class ChangeDataTypeForEnvironmentAndCabinet < ActiveRecord::Migration
  def change
    change_table :physical_securities do |t|
      t.change :environment, :string
      t.change :cabinet, :string
    end
  end
end
