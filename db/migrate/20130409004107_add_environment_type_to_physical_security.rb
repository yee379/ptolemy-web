class AddEnvironmentTypeToPhysicalSecurity < ActiveRecord::Migration
  def change
    add_column :physical_securities, :environment_type, :string
  end
end
