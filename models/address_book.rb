require_relative 'entry.rb'
class AddressBook
  attr_reader :entries

  def initialize
    @entries = []
  end

  def add_entry(name, phone_number, email)
    entries.insert(0, Entry.new(name, phone_number, email))
  end

end
