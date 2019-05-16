10.times do 
  Artist.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    avatar: Faker::Avatar.image
  )
end

puts "10 Artists Created"
sleep(3)
print `clear`