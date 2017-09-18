class Song
  attr_reader(:song, :id)

  def initialize(attributes)
    @song = attributes.fetch(:song)
    @id = attributes.fetch(:id)
  end

  def self.all
    returned_songs = DB.exec("SELECT * FROM songs;")
    songs = []
    returned_songs.each() do |song|
      song_name = song.fetch("song_name")
      id = song.fetch("id").to_i
      songs.push(Item.new({:song_name => song_name, :id => id}))
    end
    songs
  end
end
