class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@songs = []
    @@artists = []
    @@genres = []

    def initialize (name,artist,genre)
        @@artists.push(artist)
        @@genres.push(genre)
        @@count += 1

        self.name = name
        self.artist = artist
        self.genre = genre
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
        histogram = Hash.new
        Song.genres.each do |genre|
          if Hash.include?(genre)
            genre += 1
          else 
            Hash.new
         end
       end
    end
    
      def self.artist_count
        histogram = Hash.new
        Song.artists.each do |artist|
            if Hash.include?(artist)
                artist += 1
              else 
                Hash.new
            end
        end
      end
end


