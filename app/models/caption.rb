class Caption < ApplicationRecord
    belongs_to :user, optional: true
    has_many :caption_joins
    has_many :captionables, through: :caption_joins

    validates :text, presence: true
    # validate :caption_rating

    # def caption_rating
    #     if rating != "PG" || "R"
    #       errors.add(:caption, "You must select a PG or R rating")
    #     end
    # end
end
