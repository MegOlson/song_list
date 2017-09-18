class Song
  attr_reader(:name, :id)

  def initialize(attributes)
    @name = attributes.fetch(:name)
    @id = attributes.fetch(:id)
  end

  def self.all
    returned_songs = DB.exec("SELECT * FROM songs;")
    songs = []
    returned_songs.each() do |song|
      name = song.fetch("name")
      id = song.fetch("id").to_i
      songs.push(Song.new({:name => name, :id => id}))
    end
    songs
  end

  def save
    result = DB.exec("INSERT INTO songs (name) VALUES ('#{@name}') RETURNING id;")
    @id = result.first.fetch("id").to_i
  end

  def ==(another_list)
    self.name == another_list.name && self.id == another_list.id
  end
end
