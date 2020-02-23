class Gif < ApplicationRecord
    # belongs_to :user
    has_many :caption_joins, as: :captionable
    has_many :captions, through: :caption_joins
end
