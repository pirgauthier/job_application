class Commune < ApplicationRecord
  belongs_to :intercommunality
  has_many :communes_street
  has_many :streets, through: :communes_street 
  
  validates :name :code_insee, presence: true
end