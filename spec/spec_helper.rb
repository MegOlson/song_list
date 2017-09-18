require("rspec")
require("pg")
require("song")
require("list")

DB = PG.connect({:dbname => "music_test"})

RSpec.configure do |config|
  config.after(:each) do
    DB.exec("DELETE FROM songs *;")
    DB.exec("DELETE FROM lists *;")
  end
end
