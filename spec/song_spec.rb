require 'spec_helper'

describe(Song) do

  let(:list) { Song.new({:name => "Jingle Bells", :id => nil}) }

  describe(".all") do
    it ("starts off with a clear list") do
      expect(Song.all).to eq []
    end
  end

  describe("#name") do
    it("tell you the song title") do
      expect(list.name).to eq "Jingle Bells"
    end
  end

  describe("#id") do
    it("assigns the id when saved") do
      list.save
      expect(list.id).to be_an_instance_of Fixnum
    end
  end

  describe("#save") do
    it("lets you save lists to database") do
      list.save
      expect(Song.all).to eq [list]
    end
  end

  describe("#==") do
    it("is the same list if it has the same name") do
      song1 = Song.new({:name => "Jingle Bells", :id => 1})
      song2 = Song.new({:name => "Jingle Bells", :id => 1})
      expect(song1).to eq song2
    end
  end
end
