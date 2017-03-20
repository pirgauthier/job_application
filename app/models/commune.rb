class Commune < ApplicationRecord
  belongs_to :intercommunality
  #has_many :communes_streets
  #has_many :streets, through: :communes_streets 
  has_and_belongs_to_many :streets
  
  validates :name, presence: true
  
  validates :code_insee, length: { is: 5 }, presence: true
  
end