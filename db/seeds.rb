# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'net/http'
require 'uri'
require 'json'


def create_aerie_peak_ah_toons
  uri = URI.parse('http://us.battle.net/auction-data/d69439eff57a16b60f7b171c32434ad8/auctions.json')

  # Shortcut
  response = Net::HTTP.get_response(uri)

  data = JSON.parse(response.body)

  auction_hash = data['auctions']

  auctions = auction_hash['auctions']

  auctions.each do |auction|
    Character.where(name: auction['owner'], realm: auction['ownerRealm']).first_or_create
  end
end


create_aerie_peak_ah_toons
