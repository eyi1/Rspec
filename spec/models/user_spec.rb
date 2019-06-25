require 'rails_helper'

# RSpec.describe User, type: :model do
#   before(:each) do
#     @user = User.new
#   end

# #   it "has a name" do
# #     @user.posts.create
# #     expect(@user.posts.count).to eq(1)
# #   end
# end

RSpec.describe User, :type => :model do
    subject { described_class.new(name: "Anything") }
  
    it "is valid with valid attributes" do
      #subject.name = "Anything"
      expect(subject).to be_valid
    end
  
    it "is not valid without a name" do
      subject.name = nil
      expect(subject).to_not be_valid
    end

    describe "Associations" do
        it { should have_many(:posts) }
    end
end

# RSpec.describe User, type: :model do
#     it { should validate_presence_of :name }
#   end