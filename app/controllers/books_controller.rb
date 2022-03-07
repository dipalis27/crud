class BooksController < ApplicationController


  before_action :print_display_method, only: %i[edit update destroy show] 

  
  def index
   @books =Book.all
  end

  def show
    
  end 

    def create
      @book = Book.new(book_params)
    if @book.save
      redirect_to @book
    else
      render :new
    end
    end

    def new
    @book = Book.new
    end

    def edit
      
    end

    def update
  
      if @book.update(book_params)
        redirect_to @book
      else
        render :edit, status: :unprocessable_entity
      end
    end

    def destroy

      
      @book.destroy 
      redirect_to @book
    end
private

   def print_display_method
    @book= Book.find(params[:id])
   end 
    def book_params
      params.require(:book).permit(:book_name, :price, :author_name)
    end
end
