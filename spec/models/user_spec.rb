# require 'rails_helper'

# RSpec.describe User, type: :model do
#   before(:each) do
#     @user = User.new
#   end

# #   it "has a name" do
# #     @user.posts.create
# #     expect(@user.posts.count).to eq(1)
# #   end
# end

require 'rails_helper'

# RSpec.describe User, type: :model do
#   subject { described_class.new(
#       name: 'Anything') 
#   }   
  
#   it "is not valid without a name" do
#         subject.name = nil
#         expect(subject).to be_valid
#     end
    
#    it "is valid with valid attributes" do
#         expect(subject).to be_valid
#     end
#   end


# RSpec.describe User, :type => :model do
#     it "is valid with valid attributes" do
#         expect(User.new(name: 'anything')).to be_valid
#     end

#     # it "is not valid without a name" do
#     #     user = User.new(name: nil)
#     #     expect(user).to_not be_valid
#     # end
#     # it "is not valid without a start_date"
#     # it "is not valid without a end_date"
#   end

# RSpec.describe User, :type => :model do
#     subject { described_class.new(name: "Anything") }
  
#     it "is valid with valid attributes" do
#       #subject.name = "Anything"
#       expect(subject).to be_valid
#     end
  
#     it "is not valid without a name" do
#       subject.name = nil
#       expect(subject).to_not be_valid
#     end
# end

RSpec.describe User, type: :model do
    it { should validate_presence_of :name }
  end