class Person < ActiveRecord::Base
  belongs_to :trip

  validates :first_name, :last_name, :email, presence: true
	validates :email, uniqueness: true
end
