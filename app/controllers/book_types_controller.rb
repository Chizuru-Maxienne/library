class BookTypesController < ApplicationController
  layout 'application'
  def new
    @book_type=BookTypes.new
  end

  def create
    @book_type=BookTypes.new(params.require(:@book_type).permit(:category))
    respond_to do |format|
      if @book_type.save
        format.json {render json: @book_type}
        format.js {render :layout => true}
      else
        format.json {render json: @book_type}
        format.js {render :layout => true}
      end
    end
  end
end
