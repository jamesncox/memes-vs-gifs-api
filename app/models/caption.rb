class Caption < ApplicationRecord
    belongs_to :user, optional: true
    belongs_to :captionable, polymorphic: true, optional: true
    has_many :caption_joins
end
