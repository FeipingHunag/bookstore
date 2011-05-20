class ItemController < ApplicationController
  def info
    @book = Book.find(params[:id])
  end
end

