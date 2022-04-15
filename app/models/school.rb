class School < ApplicationRecord
    validates :name, presence: true
    
    has_many :students, dependent: :destroy
    has_many :profesors, dependent: :destroy
    has_many :vendors, dependent: :destroy
    has_many :payments, dependent: :destroy
end