class Travailleur < ActiveRecord::Base
  belongs_to :principal_groupe
  belongs_to :sous_groupe
  belongs_to :agence
  belongs_to :user
end
