class Post < ActiveRecord::Base
    validates :title, presence: true
    validates :content, length: { minimum: 250 }
    validates :summary, length: { maximum: 250 }
    validates :category, inclusion: { in: %w(Fiction Non-Fiction),
        message: "%{value} is not valid; must be Fiction or Non-Fiction" }
        validate :is_clickbait
end

def is_clickbait
    if !title.nil? && (!title.include?("Won't Believe" || "Secret" || "Top [number]" || "Guess"))
        errors.add(:is_clickbait, "Title must contain at least one of the clickbait phrases: 'Won't Believe', 'Secret', 'Top [number]', or 'Guess'")
    end
end