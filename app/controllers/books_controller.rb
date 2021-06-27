class BooksController < ApplicationController
    before_action :find_book, only: %i[show edit update destroy]

    def index
        if params.dig(:category).blank? # If there is no category passed in, then it will display all the books
           if params.dig(:query).blank?
                @books = Book.all.order("created_at DESC")
           else
                @books = Book.where("name LIKE (?)", "%#{params.dig(:query).downcase}%")
                redirect_to root_path if @books.empty?
           end
        else
            @category_id = Category.find_by(name: params[:category]).id # Here params[:category] is having the name of the category.
            @books = Book.where(category_id: @category_id)
        end
    end

    def show; end

    def new
        if current_seller.present?
            @book = current_seller.books.new
        else
            redirect_to root_path
        end
    end

    def create
        @book = current_seller.books.new(book_params)
        @book.category_id = params.dig(:book, :category_id)
        if @book.save
            redirect_to root_path
        else
            render 'new'
        end
    end

    def edit; end

    def update
        if @book.update(book_params)
            redirect_to root_path
        else
            render 'edit'
        end
    end

    def destroy
        @book.destroy
        redirect_to root_path
    end

    private

    def find_book
        @book = Book.find(params[:id])
    end

    def book_params
        params.require(:book).permit(:name, :author, :language, :publisher, :date_of_publication, :isbn_10, :description, :amount, :thumbnail, :category_id)
    end

end