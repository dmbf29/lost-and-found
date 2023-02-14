puts 'Cleaning the DB..'
Pet.destroy_all

puts 'Creating pets...'
50.times do
  Pet.create!(
    name: Faker::Creature::Dog.name,
    address: Faker::Address.street_address,
    species: Pet::SPECIES.sample,
    found_on: Date.today - rand(1..10)
  )
end
puts "... created #{Pet.count} pets."
