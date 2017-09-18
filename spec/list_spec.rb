require 'spec_helper'

describe(List) do
  let(:list) { List.new({:name => "Jingle Bells", :id => nil}) }
  describe(".all") do
    it("starts off with no lists") do
      expect(List.all).to eq []
    end
  end
  
end
