class CreateVendors < ActiveRecord::Migration[7.0]
  def change
    create_table :vendors, id: :uuid do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone_number
      t.string :email
      t.references :students
      t.references :school, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
