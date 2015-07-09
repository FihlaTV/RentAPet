FactoryGirl.define do
  factory :user do
    first_name 'Data'
    last_name 'Lore'
    email 'loreknows@gmail.com'
    password '12345678'
    password_confirmation '12345678'
  end

  factory :listing do

  end
end
