class Post < ActiveRecord::Base
    validates :title, presence: true
    validates :content, length: {minimum:250}
    validates :summary, length: {maximum:250}
    validates :category, inclusion: {in: ["Fiction", "Non-fiction"],
    message: "%{value} is not valid, must be Fiction or Non-fiction" }
    validate :clickbait 

    def clickbait
        if !title.nil? && (!title.include?("Won't Believe" || "Secret" || "Top [number]" || "Guess"))
            errors.add(:clickbait, "Title must be click-baity and include Won't Believe, Secret, Top [number], or Guess")
        end
    end
    
end
