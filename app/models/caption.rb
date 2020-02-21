class Caption < ApplicationRecord
    belongs_to :user
    belongs_to :captionable, polymorphic: true, optional: true
    has_many :caption_captionables
    has_many :captionable, through: :caption_captionables
end
