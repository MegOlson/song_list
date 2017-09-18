require 'spec_helper'

describe(Song) do

  let(:list) { Song.new({:song => "Jingle Bells", :id => nil}) }

  describe(".all") do
    it ("starts off with a clear list") do
      expect(Song.all).to eq []
    end
  end

end
