class Street < ApplicationRecord
  has_many :communes_streets
  has_many :communes, through: :communes_streets 
  
end