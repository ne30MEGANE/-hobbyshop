class Detail < ApplicationRecord
    belongs_to :item
    belongs_to :order

    validates :quantitiy, presence: true,
    numericality: {
        only_integer: true,
        allow_blank: true,
        greater_than: 0
    }
end
