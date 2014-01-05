class Owner < ActiveRecord::Base
  validates_presence_of :email_address
  validates_presence_of :last_name
  validates_presence_of :first_name

  has_many :buildings,
    dependent: :nullify,
    inverse_of: :owner
end
