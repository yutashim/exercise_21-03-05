50.times do
  User.create(
    name: Faker::Name.name,
    age: rand(18..100),
    sex: rand(0..1),
    address: Faker::Address.full_address
  )
end
