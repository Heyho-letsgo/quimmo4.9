# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :agence do
    nom "MyString"
    principal_groupe nil
    sous_groupe nil
  end
end
