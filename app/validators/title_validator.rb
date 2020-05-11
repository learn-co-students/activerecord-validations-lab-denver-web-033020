class TitleValidator < ActiveModel::Validator
    def validate(record)
        unless record.title.match?(/"Won't Believe", "Secret", "Top [number]", or "Guess"/)
        record.errors[:title] << "Title must be click-baity and include Won't Believe, Secret, Top [number], or Guess
        end
end