module Admin
  class CategoriesController < ApplicationController
    def index
      @categories = Category.ordered
    end

    def show
      @category = Category.find(params[:id])
    end
  end
end
