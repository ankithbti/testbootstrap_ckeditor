class Student < ActiveRecord::Base
  attr_accessible :name, :info
  validates :name, presence: true, uniqueness: true, length: { minimum: 4 }
end
