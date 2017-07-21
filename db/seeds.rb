class Seed

  def self.begin
    seed = Seed.new
    seed.generate_parks
  end

  def generate_parks
    10.times do |i|
      park = Park.create!(
        name: Faker::Space.planet,
        location: Faker::Space.galaxy,
        free_entrance_days: 'Martin Luther King Jr. Day, Presidents Day, Weekends of National Park Week, National Park Service Birthday, National Public Lands Day, Veterans Day Weekend'
      )
      5.times do |i|
        park.hikes.create!(
          name: Faker::Ancient.hero + ' ' + 'hike',
          miles: Faker::Number.decimal(1),
          difficulty: 'easy',
          park_id: Faker::Number.between(1,10)
        )
      end
    end
  end
end

Seed.begin
