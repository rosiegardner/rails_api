FactoryBot.define do
  factory(:quote) do
    author {Faker::Name.name}
    content {Faker::Movie.quote}
    date {"today"}
  end
end

# let!(:quotes) { FactoryBot.create_list(:quote, 20)}