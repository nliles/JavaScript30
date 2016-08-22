

require_relative 'dance_project'

describe Dancer do
  let(:dancer) { Dancer.new("Misty Copeland", 33) }

  it "has a readable name" do
    expect(dancer.name).to eq "Misty Copeland"
  end

  it "has a readable age" do
    expect(dancer.age).to eq 33
  end

  it "has a writeable age" do
    dancer.age = 34
    expect(dancer.age).to eq 34
  end

  it "twirls" do
  expect(dancer.pirouette).to eq "*twirls*"
end

it "bows to a partner" do
  expect(dancer.bow).to eq "*bows*"
end


it "performs a pas du chat" do
  expect(dancer.pasduchat).to eq "*pat du chat*"
end


end

