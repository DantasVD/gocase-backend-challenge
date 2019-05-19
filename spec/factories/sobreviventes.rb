FactoryBot.define do
  factory :sobrevivente do
    nome { Faker::Movies::LordOfTheRings.character }
    idade {Faker::Number.between(1, 50)}
    genero {Faker::Gender.type}
    last_latitude {Faker::Address.latitude}
    last_longitude {Faker::Address.longitude}
    first_abducted_flag {-1}
    second_abducted_flag {-1}
    third_abducted_flag {-1}
    is_abducted {false}
  end
end