require_relative '../models/address_book.rb'

RSpec.describe AddressBook do

  describe "attributes" do
    it "responds to entries" do
      book = AddressBook.new
      expect(book).to respond_to(:entries)
    end

    it "initializes entries as an array" do
      book = AddressBook.new
      expect(book.entries).to be_an(Array)
    end

    it "initializes entries empty" do
      book = AddressBook.new
      expect(book.entries.size).to eq(0)
    end
  end

  describe "add_entry" do
    it "adds one entry to entries" do
      book = AddressBook.new
      new_entry = book.add_entry("Snake", "202.303.4044", "snake@email.com")
      expect(book.entries.size).to eq(1)
    end

    it "adds correct info in new entry" do
      book = AddressBook.new
      book.add_entry("Snake", "101.202.3033", "snake@email.com")
      new_entry = book.entries[0]

      expect(new_entry.name).to eq("Snake")
      expect(new_entry.phone_number).to eq( "101.202.3033")
      expect(new_entry.email).to eq("snake@email.com")
    end
  end

  describe "remove_entry" do
    it "removes exactly one entry" do
        book = AddressBook.new
        book.add_entry("David", "202.303.4044", "david@email.com")
        book.add_entry("Snake", "101.202.3033", "snake@email.com")
        book.remove_entry("Snake", "101.202.3033", "snake@email.com")
        expect(book.entries.size).to eq(1)
    end
    it "removes the correct entry" do
      book = AddressBook.new
      book.add_entry("David", "202.303.4044", "david@email.com")
      book.add_entry("Snake", "101.202.3033", "snake@email.com")
      book.remove_entry("David", "202.303.4044", "david@email.com")

      expect(book.entries.first.name).to eq("Snake")
    end
  end
end
