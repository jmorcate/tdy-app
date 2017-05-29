class Claim < ApplicationRecord
    belongs_to :user
    belongs_to :tdy_request
    has_many :legs, inverse_of: :claim, dependent: :destroy
    accepts_nested_attributes_for :legs, allow_destroy: true
end
