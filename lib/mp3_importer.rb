class MP3Importer
    attr_accessor :path
    attr_accessor :files
    def initialize(music_path)
        @path = music_path
        dir = Dir.new(@path)
        @files = dir.children
    end

    def import
        files.each do |file|
            song = Song.new_by_filename(file)
        end
    end
end