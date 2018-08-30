class AddMoreIdsToStudent < ActiveRecord::Migration[5.2]
  def change
    add_column :students, :instructor_id, :integer
    add_column :students, :course_id, :integer
  end
end
