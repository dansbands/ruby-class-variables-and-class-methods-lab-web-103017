require "pry"

class Song
  @@count = 0
  @@artists = []
  @@genres = []

  attr_accessor :name, :artist, :genre, :count, :artists, :genres

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    count_hash = Hash.new(0)

    @@genres.each do |item|
      count_hash[item] += 1
    end
    count_hash
  end

  def self.artist_count
    artist_count_hash = Hash.new(0)

    @@artists.each do |item|
      artist_count_hash[item] += 1
    end
    artist_count_hash
  end
end
