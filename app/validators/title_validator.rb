class TitleValidator < ActiveRecord::Validator

def validate(record)
    unless record.title.include? "Won't Believe", "Secret", "Top [number]", "Guess"
end