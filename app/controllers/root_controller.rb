class RootController < ApplicationController
  def index
    @search = Book.search(params[:search])
    @books = @search.paginate(:page => params[:page], :per_page => 4)
  end

  def browse
    @books = Category.find(params[:id]).books.paginate(:page => params[:page], :per_page => 4)
  end
end

