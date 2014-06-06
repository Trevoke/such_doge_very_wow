require 'such_doge_very_wow/version'
require 'such_doge_very_wow/parser'

module SuchDogeVeryWow
  def self.parse(dson)
    Parser.new(dson).call
  end
end
