class Course < ApplicationRecord
  has_one :instructor
  has_many :students
end
