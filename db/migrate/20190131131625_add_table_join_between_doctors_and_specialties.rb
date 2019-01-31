class AddTableJoinBetweenDoctorsAndSpecialties < ActiveRecord::Migration[5.2]
  def change
        add_reference :join_tables, :doctor, foreign_key: true
        add_reference :join_tables, :specialty, foreign_key: true
  end
end
