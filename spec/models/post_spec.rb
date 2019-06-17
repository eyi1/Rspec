require 'rails_helper'

RSpec.describe Post, type: :model do
  # subject { described_class.new(title: 'title', content: 'content') }

  # describe "Validations" do
  #   it "is valid with valid attributes" do 
  #     expect(subject).to be_valid
  #   end
  
  #   it "is not valid without a title" do
  #       subject.title = nil
  #       expect(subject).to_not be_valid
  #   end

  #   it "is not valid without a content" do 
  #     subject.content = nil
  #     expect(subject).to_not be_valid
  #   end
  # end

  describe "Associations" do
    it { should belong_to(:user) }
    it { should validate_presence_of :title}
    it { should validate_presence_of :content}
  end
  
end

# RSpec.describe Post, :type => :model do
#   describe "Associations" do
#     it { should belong_to(:user) }
#   end
# end