class Api::V1::ReviewsController < ApplicationController

    def index
        reviews = Review.all
        render json: reviews
    end

    def show
        review = Review.find(params[:id])
        render json: review
    end

    def create
        review = Review.new(review_params)
        if review.save
            render json: review
        else
            render error: {error: "Unable to create review."}
        end
    end

    def update
        review = Review.find(params[:id])
        if review
            review.update(review_params)
        else
            render error: {error: "Unable to update review."}
        end
    end

    def destroy
        review = Review.find(params[:id])
        review.destroy
    end

    private

    def review_params
        require.params(:review).permit(:title, :rating, :comment, :user_id, :restaurant_id)
    end

end
