class Caption < ApplicationRecord
    belongs_to :commentable, polymorphic: true
end
