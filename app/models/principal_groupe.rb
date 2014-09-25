class PrincipalGroupe < ActiveRecord::Base
  has_many :travailleurs
  has_many :sous_groupes
end
