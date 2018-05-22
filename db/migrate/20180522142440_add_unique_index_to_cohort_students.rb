class AddUniqueIndexToCohortStudents < ActiveRecord::Migration[5.2]
  def change
    add_index :cohort_students, [:cohort_id, :student_id], unique: true
  end
end
