require 'spec_helper'

describe SuchDogeVeryWow do
  it 'parses an empty object as an empty Ruby hash' do
    doge = "such wow"
    expect(parse(doge)).to eq({})
  end

  def parse(dson)
    SuchDogeVeryWow.parse(dson)
  end
end
