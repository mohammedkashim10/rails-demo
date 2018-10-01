class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def edit
    @book = Book.find(params[:id])
  end

  def create
    @book = Book.new(book_params)

    respond_to do |format|
      if @book.save
        format.html {
          redirect_to @book
        }
      else
        format.html {
          render :new
        }
      end
    end
  end

  def update
    @book = Book.find(params[:id])

    respond_to do |format|
      if @book.update(book_params)
        format.html {
          redirect_to @book
        }
      else
        format.html {
          render :edit
        }
      end
    end
  end

  def destroy
    Book.find(params[:id]).destroy
    respond_to do |format|
      format.html {
        redirect_to books_path
      }
    end
  end

  def book_params
    params.require(:book).permit(:title, :published, :genre)
  end
end
