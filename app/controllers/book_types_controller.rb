class BookTypesController < ApplicationController
  layout 'application'
  def new
    @biik_type=BookType.new
  end

  def create
    @bokk_type=BookType.new(params.require(:@book_type).permit(:category))
    respond_to do |format|
      if @book_type.save
        format.json {render json: @book_type}
        format.js {render :layouts => true}
      else
        format.json {render json: @book_type}
        format.js {render :layouts => true}
      end
    end
  end
end
