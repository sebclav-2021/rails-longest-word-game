class GamesController < ApplicationController
  def new
    @letters = []
    range = ("a".."p").to_a
    10.times{@letters << (range.sample)}
  end

  def score
    require "json"
    require "open-uri"

    url = `https://wagon-dictionary.herokuapp.com/#{param[:letters]}`
    user_serialized = URI.open(url).read
    user = JSON.parse(user_serialized)

    puts "ok!"
  end
end
