class CreateJoinTables < ActiveRecord::Migration[5.2]
  def change
    create_table :join_tables do |t|

      t.timestamps
    end
  end
end
