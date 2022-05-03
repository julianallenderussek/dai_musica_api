class Student < ApplicationRecord

    belongs_to :school
    has_and_belongs_to_many :profesors
    belongs_to :vendor
end