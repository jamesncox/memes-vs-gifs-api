class Caption < ApplicationRecord
    belongs_to :user, optional: true
    has_many :caption_joins
    has_many :captionables, through: :caption_joins

    validates :text, presence: true, uniqueness: true, on: :create
end
