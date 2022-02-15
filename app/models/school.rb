class School < ApplicationRecord
    validates :name, presence: true
    
    has_many :students
    has_many :profesors
    has_many :vendors
    has_many :payments
end