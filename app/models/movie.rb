class Movie < ApplicationRecord
    has_many :reviews, dependent: :destroy
    # validates :title, :released_on, presence: true
    # validates :description, length: { minimum: 25 }
    # validates :total_gross, numericality: { greater_than_or_equal_to: 0 }
    
    def flop?
        total_gross.blank? || total_gross < 50000000
    end

    def self.released
        where("released_on <= ?", Time.now).order("released_on desc")
    end


end
