class Intercommunality < ApplicationRecord
  has_many :communes
  
  validates :name, presence: true
  validates :siren, presence: true, uniqueness: { case_sensitive: false }, format: { with: /\b\d{9}\b/}
  validates :form, acceptance: { accept: ['ca', 'cu', 'cc', 'met'] }
  
  
  
  def communes_hash
    intercommunalities.map{ |i| [i.code_insee,i.name] }.to_h
	#{:code_insee => :name}
  end
end