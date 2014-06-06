require 'spec_helper'

describe SuchDogeVeryWow do
  it 'parses an empty object as an empty Ruby hash' do
    doge = "such wow"
    expect(parse(doge)).to eq({})
  end

  it 'parses the sample foo/bar object' do
    doge = 'such "foo" is "bar" wow'
    expect(parse(doge)).to eq({'foo' => 'bar'})
  end

  def parse(dson)
    SuchDogeVeryWow.parse(dson)
  end
end
