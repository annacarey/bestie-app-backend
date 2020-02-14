class User < ApplicationRecord
    has_many :friends
    validates :name, :email, :phone_number, :image_url, presence: true
    validates :name, uniqueness: true
end
