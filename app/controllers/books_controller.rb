class BooksController < ApplicationController
  include BooksHelper
  layout 'application'
  def index
    @books=Book.all.paginate(:per_page=>5, :page => params[:page]).order('created_at DESC')
  end

  def show
  end

  def new
    @book=Book.new
  end

  def create
    @book=Book.new(params.require(:@book).permit(:category))
    respond_to do |format|
      if @book.save
        format.json {render json: category}
        format.js {render :layouts => true}
      else
        format.json {render json: category}
        format.js {render :layouts => true}
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @book.update(book_params)
        format.json(render json: @book)
        format.js()
      else
        format.json(render json: @book)
        format.js()
      end
    end
  end

  def destroy
  end

  def show_old
  end

  def show_new
  end

  private
  def set_book
    @book=Book.find(params[:isbn])
  end

  def book_params
    params.require(:book).permit :isbn, :title, :author, :category, :publisher,
                  :copyright, :description
  end
end
