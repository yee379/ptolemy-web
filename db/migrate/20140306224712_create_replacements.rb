class CreateReplacements < ActiveRecord::Migration
  def change
    create_table :replacements do |t|
      t.string :group_name
      t.references :entity
      t.references :property
      t.references :hardware
      t.integer :quantity
      t.references :replacement_hardware
      t.timestamps
    end

    reversible do |dir|
      dir.up do
        #add a foreign key
        execute <<-SQL
          -- CREATE UNIQUE INDEX entity__meta_pkey ON entity__meta(id);
          -- CREATE UNIQUE INDEX ipam__property_control_pkey ON ipam__property_control(id);
          ALTER TABLE replacements
            ADD CONSTRAINT "fk_replacements_entity"
            FOREIGN KEY (entity_id)
            REFERENCES entity__meta(id);
          ALTER TABLE replacements
            ADD CONSTRAINT "fk_replacements_property"
            FOREIGN KEY (property_id)
            REFERENCES ipam__property_control(id);
          ALTER TABLE replacements
            ADD CONSTRAINT "fk_replacements_hardware"
            FOREIGN KEY (hardware_id)
            REFERENCES hardwares(id);
          ALTER TABLE replacements
            ADD CONSTRAINT "fk_replacements_replacement_hardware"
            FOREIGN KEY (replacement_hardware_id)
            REFERENCES hardwares(id);
        SQL
      end
      dir.down do
        execute <<-SQL
          ALTER TABLE replacements
            DROP CONSTRAINT "fk_replacements_entity";
          ALTER TABLE replacements
            DROP CONSTRAINT "fk_replacements_property";
          ALTER TABLE replacements
            DROP CONSTRAINT "fk_replacements_hardware";
          ALTER TABLE replacements
            DROP CONSTRAINT "fk_replacements_replacement_hardware";
        SQL
      end
    end
  end
end
