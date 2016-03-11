# Crate Events
event_1 = Event.create(name: 'Day 1', date: Date.today.next_month)
event_2 = Event.create(name: 'Day 2', date: Date.today.next_month)

# Crate speaker
speaker_1 = Speaker.create(name: Faker::StarWars.character, twitter_account: '@', image: Faker::Avatar.image)
speaker_2 = Speaker.create(name: Faker::StarWars.character, twitter_account: '@', image: Faker::Avatar.image)

# Crate special events
Talk.create(order: 3, event: event_1, name: 'Break',
                       description: 'Break', is_keynote: false,
                       starts_at: '11:00', ends_at: '12:00', rate: '0', note: '')

Talk.create(order: 4, event: event_1, name: 'Sponsors Time',
                       description: 'Sponsors Time', is_keynote: false,
                       starts_at: '13:00', ends_at: '14:00', rate: '0', note: '')

# Create talks
speaker_1.talks.create(order: 1, event: event_1, name: Faker::Name.title,
                       description: Faker::Lorem.sentences(3), is_keynote: true,
                       starts_at: '09:00', ends_at: '10:00', rate: '0', note: '')

speaker_1.talks.create(order: 2, event: event_1, name: Faker::Name.title,
                       description: Faker::Lorem.sentences(3), is_keynote: false,
                       starts_at: '10:00', ends_at: '11:00', rate: '0', note: '')

speaker_2.talks.create(order: 1, event: event_2, name: Faker::Name.title,
                       description: Faker::Lorem.sentences(3), is_keynote: true,
                       starts_at: '09:00', ends_at: '10:00', rate: '0', note: '')

speaker_2.talks.create(order: 2, event: event_2, name: Faker::Name.title,
                       description: Faker::Lorem.sentences(3), is_keynote: false,
                       starts_at: '10:00', ends_at: '11:00', rate: '0', note: '')