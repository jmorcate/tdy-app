class Claim < ApplicationRecord
    has_many :legs
    belongs_to :user
    belongs_to :tdy_request
end
