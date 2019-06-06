class Song
    attr_accessor :name
    attr_accessor :artist

    def initialize(name)
        @name = name

    end

    def self.new_by_filename(filename)
        song_data = filename.split("-")
        song_name = song_data[1].lstrip.rstrip
        song = Song.new(song_name)
        song.artist = Artist.find_or_create_by_name(song_data[0].lstrip.rstrip)
        #binding.pry
        song.artist.add_song(song)
        #song.artist.add_song(song)
        #binding.pry
        song
    end
end