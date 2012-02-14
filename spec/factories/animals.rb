# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :animal do
    nome "MyString"
    nomePopular "MyString"
    status "MyString"
    dtModificacao "MyString"
    veterinario nil
  end
end
