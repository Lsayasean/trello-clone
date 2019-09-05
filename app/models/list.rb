class List < ApplicationRecord

    acts_as_list

    # creates relational db and order by position asc
    has_many :cards, ~> { order(position: :asc ) } , dependant: :destroy

    validates :name, presence: true
end
