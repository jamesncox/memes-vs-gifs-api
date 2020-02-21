class Gif < ApplicationRecord
    belongs_to :user
    has_many :caption_captionables
    has_many :captions, through: :caption_captionables
end
