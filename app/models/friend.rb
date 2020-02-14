class Friend < ApplicationRecord
    belongs_to :user
    validates :name, :phone_number, :image_url, :priority, presence: true
end
