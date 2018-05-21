class CreateInstructors < ActiveRecord::Migration[5.2]
  def change
    create_table :instructors do |t|
      t.string :first_name 
      t.string :last_name
      t.integer :salary
      t.string :high_deg
      t.integer :age

      t.timestamps
    end
  end
end
