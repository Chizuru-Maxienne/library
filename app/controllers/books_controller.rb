class BooksController < ApplicationController
  include BooksHelper
  layout 'application'
  def index
    @books=Book.all
  end

  def show
  end

  def new
    @book=Book.new
    @categories=BookType.all
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def show_old
  end

  def show_new
  end

  def search
  end
end
