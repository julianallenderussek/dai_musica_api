class Profesor < ApplicationRecord
    belongs_to :school
    has_and_belongs_to_many :students
    
end