class Street < ApplicationRecord
  #has_many :communes_streets
  #has_many :communes, through: :communes_streets 
  has_and_belongs_to_many :communes
  
  validates :from, :numericality => true, :allow_nil => true
  validates :to, :numericality => true, :allow_nil => true
  validates :title, presence: true
end