class RootController < ApplicationController
  def index
    if params[:category]
      @books = Category.find_by_name(params[:category]).books.paginate(:page => params[:page], :per_page => 4)
    else
      @books = Book.search(:title_or_subtitle_or_author_or_description_contains => params[:search]).paginate(:page => params[:page], :per_page => 4)
    end
  end
end

