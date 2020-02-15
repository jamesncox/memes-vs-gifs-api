class Caption < ApplicationRecord
    belongs_to :selectable, polymorphic: true
end
