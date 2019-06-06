require "pry"

class Artist
    attr_accessor :name
    attr_accessor :songs
    

    @@all = []

    def self.all
        #binding.pry
        @@all
    end

    def initialize(name)
        @name = name
        @songs = []
    end

    def add_song(song)
        @songs << song
    end


    def save
        @@all << self
    end

    def self.find_or_create_by_name(name)
        artist = @@all.find_all{ |artist| artist.name == name}
        if artist.length > 1
            exit
        elsif artist.length == 1
            #binding.pry
            return artist[0]
        end
        #binding.pry
        new_artist = Artist.new(name)

        @@all << new_artist
        new_artist
    end

    def print_songs
        @songs.each do |s|
            puts s.name
        end
    end
end