class CreateProfesors < ActiveRecord::Migration[7.0]
  def change
    create_table :profesors, id: :uuid do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :status
      t.string :instrument
      t.string :phone_number
      t.string :country
      t.string :city
      t.references :school, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
