class Intercommunality < ApplicationRecord
  has_many :communes
  
  validates :name, presence: true
  
  validates :siren, presence: true
  validates_uniqueness_of :siren, :case_sensitive => false
  validates :form, acceptance: { accept: ['ca', 'cu', 'cc', 'met'] }
  
  def communes_hash
    intercommunalities.map{ |i| [i.code_insee,i.name] }.to_h
	#{:code_insee => :name}
  end
end