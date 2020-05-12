class TitleValidator < ActiveModel::Validator 
    def validate 
        unless record.title.includes?(Wont Believe Secret Top Guess)
            record.errors[:title] << 'Not click baity enough'
        end 
    end 
end 