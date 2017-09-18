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


end
