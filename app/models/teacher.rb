class Teacher < ApplicationRecord
  has_many :courses, dependent: :destroy
  # adds encryption and related security \
  # checks to teacher passwords
  has_secure_password

  # validations to ensure data integrity
   validates :password, length: { minimum: 6 }, allow_nil: false
   validates :name, :department, presence: :true
   validates :email, :format => {:with => /\A\S+@.+\.\S+\z/, :message =>
      "Please enter a valid email address! ie. john@example.com "}, uniqueness: :true
end