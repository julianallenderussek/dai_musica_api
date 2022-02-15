class Profesor < ApplicationRecord
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :email, presence: true
    validates :phone_number, presence: true
    validates :country, presence: true
    validates :city, presence: true
    validates :instrument, presence: true
    validates :status, presence: true

    belongs_to :school
    has_many :students
    
end