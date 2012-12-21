class PotentialClient < ActiveRecord::Base
  attr_accessible :name, :email, :phone, :project_description

  #validates :name, presence: true, length: { maximum: 50 }
  #validates :email, presence: true
  #validates :phone, presence: true
  #validates :project_description, presence: true
end
