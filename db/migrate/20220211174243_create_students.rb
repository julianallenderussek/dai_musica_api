class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students, id: :uuid do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :status
      t.string :modality
      t.string :instrument
      t.string :marketing
      t.string :country
      t.string :city
      t.string :phone_number
      t.references :school, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
