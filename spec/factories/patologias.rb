# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :patologia do
    nome "MyString"
    nomePopular "MyString"
    detalhes "MyString"
    especialidade nil
    item nil
  end
end
