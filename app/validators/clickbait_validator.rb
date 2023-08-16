class ClickbaitValidator < ActiveModel::Validator
    CLICKBAIT_PATTERNS = [
      /Won't Believe/i,
      /Secret/i,
      /Top \d+/i,
      /Guess/i
    ].freeze
  
    def validate(record)
      unless CLICKBAIT_PATTERNS.any? { |pattern| record.title =~ pattern }
        record.errors.add(:title, "must be sufficiently clickbait-y")
      end
    end
  end
  