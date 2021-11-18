class Zoomlog < ApplicationRecord
    has_and_belongs_to_many :groups
    validates :zoomid, presence: true, uniqueness: true
    validates :desc, presence: true, length: {minimum: 10}
end
