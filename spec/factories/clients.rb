FactoryGirl.define do
  factory :client do
    name "Maria"
    phone "11 99999-9999"
    address "Av. Paulista, 1200"
  end

  factory :invalid_client, class: Client do
     name nil
     phone "11 99999-9999"
     address "Av. Paulista, 1200"
   end

end
