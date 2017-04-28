class TdyRequest < ApplicationRecord
    has_and_belongs_to_many :users
    belongs_to :author, class_name: "User"
end
