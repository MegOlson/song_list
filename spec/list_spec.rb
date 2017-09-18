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

  describe("#id") do
    it("sets its ID when you save it") do
      list.save
      expect(list.id).to be_an_instance_of Fixnum
      end
    end

  describe("#save") do
    it("lets you save lists to the database") do
      list.save
      expect(List.all).to eq [list]
    end
  end

  describe("#==") do
    it("is the same list if it has the same name") do
      list1 = List.new({:name => "Jingle Bells", :id => nil})
      list2 = List.new({:name => "Jingle Bells", :id => nil})
      expect(list1).to eq list2
    end
  end

  describe("sort") do
    it("sorts items in the list alphabetically") do
      list1 = List.new({:name => "Jingle Bells", :id => nil})
      list1.save
      list2 = List.new({:name => "Happy Holidays", :id => nil})
      list2.save
      expect(list.sort.first.fetch(@name)).to eq [list2, list1]
    end
  end
end
