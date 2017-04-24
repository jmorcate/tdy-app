class TdyRequest < ApplicationRecord
    has_and_belongs_to_many :users
end
