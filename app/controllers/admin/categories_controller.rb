class Admin::CategoriesController < ApplicationController
  layout 'admin'
  before_filter :find_category, :only => [:show, :update, :edit, :destroy]
  respond_to :html, :json

  def index
    @search = Category.search(params[:search])
    respond_with(:admin,@categories = @search.paginate(:page => params[:page], :per_page => 5))
  end

  def show
    respond_with(:admin, @categories)
  end

  def new
    respond_with(:admin, @category = Category.new)
  end

  # GET /categorys/1/edit
  def edit
    respond_with(:admin, @category)
  end

  # POST /categorys
  def create
    @category = Category.new(params[:category])
    flash[:notice] = 'Successfully created category.' if @category.save
    respond_with(:admin, @category)
  end

  # PUT /categorys/1
  def update
     flash[:notice] = 'Successfully updated category.' if @category.update_attributes(params[:category])
     respond_with(:admin, @category)
  end

  # DELETE /categorys/1
  def destroy
    if @category.destroy
      flash[:notice] = "Sucessfully destroy category!"
    else
      flash[:error] = @category.errors.first.last
    end
    redirect_to :action => "index"
  end



  private
  def find_category
     @category = Category.find(params[:id])
  end
end

