require 'spec_helper'

describe(List) do
  let(:list) { List.new({:name => "Jingle Bells", :id => nil}) }
  describe(".all") do
    it("starts off with no lists") do
      expect(List.all).to eq []
    end
  end

  describe("#name") do
    it("tells you the name") do
      expect(list.name).to eq "Jingle Bells"
    end
  end

  



end
