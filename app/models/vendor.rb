class Vendor < ApplicationRecord
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :email, presence: true
    validates :phone_number, presence: true

    belongs_to :school
    has_many :students
    
end