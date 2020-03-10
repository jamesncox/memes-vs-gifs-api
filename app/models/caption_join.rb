class CaptionJoin < ApplicationRecord
    belongs_to :user
    belongs_to :captionable, polymorphic: true, optional: true
    belongs_to :caption

    validates_uniqueness_of :captionable_id, scope: %i[caption_id user_id]
end
