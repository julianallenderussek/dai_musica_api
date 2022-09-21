class Student < ApplicationRecord
    validates :first_name, presence: true
    validates :last_name, presence: true
    validate :email
    validate :phone_number
    validate :country
    validate :city
    validate :instrument
    validate :marketing
    validate :modality
    validate :status

    belongs_to :school
    belongs_to :profesor
    belongs_to :vendor
end