# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :travailleur do
    nom "MyString"
    principal_groupe nil
    sous_groupe nil
    agence nil
    user nil
  end
end
