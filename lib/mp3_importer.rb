class MP3Importer
    
    attr_reader :path 

    def initialize(path)
        @path = path 
    end 

    def files 
        array = Dir.entries(path)
        array.shift(2)
        array
    end 

    def import 
        files.each {|filename| Song.new_by_filename(filename)}
    end 
end 