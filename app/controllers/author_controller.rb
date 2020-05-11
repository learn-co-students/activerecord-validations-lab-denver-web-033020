class AuthorController < ApplicationController
    def create
        @author = User.create(author_params)
        render json: @author
    end

    private

    def author_params
        params.require(:author).permit([:name])
    end
end