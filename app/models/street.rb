class Street < ApplicationRecord
  has_many :communes_streets
  has_many :communes, through: :communes_streets 
  
  validates :from, numericality: true, :allow_nil => true
  validates :to, numericality: {:greater_than => :from}, :allow_nil => true
  validates :title, presence: true
  
end