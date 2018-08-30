class CreateInsturctors < ActiveRecord::Migration[5.2]
  def change
    create_table :insturctors do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.integer :salary
      t.string :education

      t.timestamps
    end
  end
end
