# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :animal do
    nomeCientifico "MyString"
    nomePopular "MyString"
    detalhes "MyString"
    item nil
  end
end
