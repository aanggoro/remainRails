class CreateTableEnum < ActiveRecord::Migration[5.1]

  revert do |dir|
      dir.up do
        # add a CHECK constraint
        create_table :table_enums do |t|
        end
      end

      dir.down do
        drop_table :table_enums
      end
    end
end
