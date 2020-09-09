require 'music_filter'

describe "music filter" do
  # [40] |[40]
  it 'returns the same frequency as it is equal to the lower value' do
    expect(music_filter([40], 40, 1000)).to eq([40])
  end

#[30], 40, 1000 | [40] # adjusting the lower value
  it "adjusts the lower value" do
    expect(music_filter([30], 40, 1000)).to eq([40])
  end

  # [1001], 40, 1000 |[1000] # adjusting the higher value 
  it "adjusts the higher value" do
    expect(music_filter([1001], 40, 1000)).to eq([1000])
  end

  # [], 40, 1000 |raise error "No frequencies provided" 
  it "raises an error if no frequencies provided" do
    expect{ music_filter([], 40, 1000) }.to raise_error("No frequencies provided")
  end
end