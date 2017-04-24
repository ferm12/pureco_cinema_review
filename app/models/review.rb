class Review < ApplicationRecord
    belongs_to :movie
    validates :email, presence: true
    validates :comment, length: { minimum: 4 }
    RATINGS = [1, 2, 3, 4, 5]

    validates :rating, inclusion: {
        in: RATINGS,
        message: "must be between 1 and 5"
    }
    
  
end
