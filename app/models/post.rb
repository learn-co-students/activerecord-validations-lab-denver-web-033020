class Post < ActiveRecord::Base
    # include ActiveModel::Validations
    # validates_with TitleValidator
    validates :title, presence: true
    validates :content, length: {minimum: 250}
    validates :summary, length: {maximum: 250}
    validates :category, inclusion: {in: %w(Fiction Non-Fiction)}
    validate :clickbait

    def clickbait
        check = false
        if title.present?
            if title.include?("Secret") 
                check = true 
            elsif title.include?("Top")
                check = true 
            elsif title.include?("Won't Believe")
                check = true 
            elsif title.include?("Guess")
                check = true 
            end 
        end 

        if check == false 
            errors.add(:title, "not click bait")
        end 
    end 
end
