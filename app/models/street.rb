class Street < ApplicationRecord
  #has_many :communes_streets
  #has_many :communes, through: :communes_streets 
  has_and_belongs_to_many :communes
  
  validates_numericality_of :from, :allow_nil => true
  validates_numericality_of :to, :allow_nil => true, :greater_than => :from
  
  validates :title, presence: true
  
end