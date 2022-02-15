class AddProfesorToStudents < ActiveRecord::Migration[7.0]
  def change
    add_reference :students, :profesor, null: false, type: :uuid
  end
end
