class AddVendorToStudents < ActiveRecord::Migration[7.0]
  def change
    add_reference :students, :vendor, null: false, type: :uuid
  end
end

