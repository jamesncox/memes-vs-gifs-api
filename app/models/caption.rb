class Caption < ApplicationRecord
    belongs_to :commentable, polymorphic: true, optional: true
end
