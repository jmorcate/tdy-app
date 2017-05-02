class TdyRequest < ApplicationRecord
    has_and_belongs_to_many :users
    belongs_to :driver, class_name: "User", optional: true
end
