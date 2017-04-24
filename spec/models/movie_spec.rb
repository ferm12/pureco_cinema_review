require 'rails_helper'

describe "A movie" do
    it "is a flop if the total gross is less than $50M" do
        movie = Movie.new(total_gross: 40000000.00)

        expect(movie.flop?).to eq(true)
    end

    it "is not a flop if the total gross exceeds $50M" do
        movie = Movie.new(total_gross: 60000000.00)

        expect(movie.flop?).to eq(false)
    end

    it "has many reviews" do
        movie = Movie.new(movie_attributes)

        review1 = movie.reviews.new(review_attributes)
        review2 = movie.reviews.new(review_attributes)

        expect(movie.reviews).to include(review1)
        expect(movie.reviews).to include(review2)
    end

    it "deletes associated reviews" do
        movie = Movie.create(movie_attributes)

        movie.reviews.create(review_attributes)

        expect {
        movie.destroy
        }.to change(Review, :count).by(-1)
    end
end
