class Admin::BooksController < ApplicationController
  layout 'admin'
  before_filter :find_book, :only => [:show, :update, :edit, :destroy]
  respond_to :html, :json

  def index
    @search = Book.search(params[:search])
    respond_with(:admin,@books = @search.paginate(:page => params[:page], :per_page => 5))
  end

  def show
    respond_with(:admin, @books)
  end

  def new
    respond_with(:admin, @book = Book.new)
  end

  # GET /books/1/edit
  def edit
    respond_with(:admin, @book)
  end

  # POST /books
  def create
    @book = Book.new(params[:book])
    flash[:notice] = 'Successfully created book.' if @book.save
    respond_with(:admin, @book)
  end

  # PUT /books/1
  def update
     flash[:notice] = 'Successfully updated book.' if @book.update_attributes(params[:book])
     respond_with(:admin, @book)
  end

  # DELETE /books/1
  def destroy
    if @book.destroy
      flash[:notice] = "Sucessfully destroy book!"
    else
      flash[:error] = @book.errors.first.last
    end
    redirect_to :action => "index"
  end



  private
  def find_book
     @book = Book.find(params[:id])
  end
end

