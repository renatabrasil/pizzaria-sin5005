require 'rails_helper'

RSpec.describe Client, type: :model do
  
  subject {
    Client.new(name: "Client 1", phone: "99999-9999",
              address: "Rua das Palmeiras, 999")
  }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without a name" do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a phone" do
    subject.phone = nil
    expect(subject).to_not be_valid
  end
  it "is not valid without a address" do
    subject.address = nil
    expect(subject).to_not be_valid
  end

end
