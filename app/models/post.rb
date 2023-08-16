class Post < ApplicationRecord
    validates :title, presence: true
    validates :content, length: {minimum: 250}
    validates :summarty, length: {maximum: 250}
    validates :category, inclusion: {in :["Fiction", "Non-Fiction"]}
end
