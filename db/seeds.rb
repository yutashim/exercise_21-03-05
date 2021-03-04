# 50.times do
#   User.create(
#     name: Faker::Name.name,
#     age: rand(18..100),
#     sex: rand(0..1),
#     address: Faker::Address.full_address
#   )
# end
20.times do |n|
  Post.create(
    content: Faker::Creature::Animal.name
  )
end
["完了","着手中","未着手","易","普通","何","急ぎ","後回し"].each do |w|
  Label.create(
    content: w
  )
end
