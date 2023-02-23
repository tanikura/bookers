class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      #リダイレクトと同時にメッセージ表示
      redirect_to books_path, notice: 'Book was successfully created.'
    else
      render :new
    end
  end

  def index
    @books = Book.all
    @book = Book.new
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    book = Book.find(params[:id])
    book.update(book_params)
    redirect_to "/books/#{book.id}", notice: 'Book was successfully created.'
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to "/books", notice: 'Book was successfully created.'
  end

  private

  def book_params
    params.required(:book).permit(:title,:body)
  end

end
