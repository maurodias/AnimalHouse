# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :edicao do
    status "MyString"
    camposEditado "MyString"
    veterinario nil
    item nil
  end
end
