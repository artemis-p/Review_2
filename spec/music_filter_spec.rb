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

end