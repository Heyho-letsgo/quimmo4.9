class SousGroupe < ActiveRecord::Base
  belongs_to :principal_groupe
  has_many :travailleurs
end
