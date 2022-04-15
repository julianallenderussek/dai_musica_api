class Payment < ApplicationRecord
    validates :status, presence: true
    validates :date, presence: true
    # validates :method, presence: true

    #validates :account, presence: true
    # validates :type_of_payment, presence: true
    validates :amount, presence: true
    validates :type_of_expense, presence: true
    mount_uploader :image_receipt, FileUploader

    belongs_to :school
    
    #ver las referencias belongs to, has many etc.

end