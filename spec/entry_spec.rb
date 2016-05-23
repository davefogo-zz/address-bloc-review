require_relative '../models/entry.rb'

RSpec.describe Entry do
  let(:entry) {entry = Entry.new('David','202.303.4044', 'david@email.com')}

  describe "attributes" do
    it "responds to name" do
      expect(entry).to respond_to(:name)
    end

    it "reports its name" do
      expect(entry.name).to eq('David')
    end

    it "responds to phone_number" do
      expect(entry).to respond_to(:phone_number)
    end

    it "reports its phone_number" do
      expect(entry.phone_number).to eq('202.303.4044')
    end

    it "responds to email" do
      expect(entry).to respond_to(:email)
    end

    it "reports its email" do
      expect(entry.email).to eq('david@email.com')
    end
  end

  describe "to_s" do
    it "turns an entry into a string" do
      expected_string = "Name: David\nPhone Number: 202.303.4044\nEmail: david@email.com"
      expect(entry.to_s).to eq(expected_string)
    end
  end

end
