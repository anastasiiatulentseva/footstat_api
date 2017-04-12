10.times do
  played_on = Faker::Date.between(7.days.ago, Date.yesterday)
  team = Team.all.to_a
  score = "#{Faker::Number.digit} : #{Faker::Number.digit}"
  city = Faker::Address.city
  referee = Faker::Name.name
  Match.create!(
    played_on: played_on,
    team1_id: team.sample.id,
    team2_id: team.sample.id,
    score:    score,
    city: city,
    referee: referee,
    tournament: "Natural Championship",
    yellow_cards_count: Faker::Number.digit,
    red_cards_count: Faker::Number.digit,
    substitutions_count: Faker::Number.digit,
    duration: Faker::Number.between(5400, 6000)
  )
end

# # Teams
# 5.times do
#   name = Faker::Team.creature
#   country = Faker::Address.country
#   city = Faker::Address.city
#   emblem = Faker::Avatar.image
#   Team.create!(
#     name: name.capitalize,
#     country: country,
#     city: city,
#     emblem: emblem
#   )
# end
#
# Team.all.each do |team|
#   20.times do
#     name = Faker::Name.first_name
#     surname = Faker::Name.last_name
#     origin_country = Faker::Address.country
#     dob = Faker::Date.birthday(18, 35)
#     Player.create!(
#       first_name: name,
#       last_name: surname,
#       origin_country: origin_country,
#       dob: dob,
#       team: team
#     )
#   end
# end

