class Post < ApplicationRecord
    belongs_to :user, class_name: "User"

    validates_presence_of :title, :content
end
