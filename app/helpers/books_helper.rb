module BooksHelper
  def book_page_heading(heading='')
    book_heading='Books: '
    if heading.empty?
      book_heading
    else
      book_heading + ' ' + heading
    end
  end
end
