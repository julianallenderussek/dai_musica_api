class CreatePayments < ActiveRecord::Migration[7.0]
  def change
    create_table :payments, id: :uuid do |t|
      t.string :status
      t.string :date
      t.string :payment_type
      t.string :received_by
      t.string :account
      t.string :type_of_payment
      t.integer :amount
      t.string :type_of_expense
      t.uuid :payor
      t.uuid :payee
      t.string :image_receipt
      t.references :school, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end