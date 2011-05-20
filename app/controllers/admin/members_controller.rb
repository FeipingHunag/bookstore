class Admin::MembersController < Admin::BaseController
  before_filter :find_member, :only => [:show, :update, :edit, :destroy]
  respond_to :html, :json

  def index
    @search = Member.search(params[:search])
    respond_with(:admin,@members = @search.paginate(:page => params[:page], :per_page => 5))
  end

  def show
    respond_with(:admin, @members)
  end

  def new
    respond_with(:admin, @member = Member.new)
  end

  # GET /members/1/edit
  def edit
    respond_with(:admin, @member)
  end

  # POST /members
  def create
    @member = Member.new(params[:member])
    flash[:notice] = 'Successfully created member.' if @member.save
    respond_with(:admin, @member)
  end

  # PUT /members/1
  def update
     flash[:notice] = 'Successfully updated member.' if @member.update_attributes(params[:member])
     respond_with(:admin, @member)
  end

  # DELETE /members/1
  def destroy
    if @member.destroy
      flash[:notice] = "Sucessfully destroy member!"
    else
      flash[:error] = @member.errors.first.last
    end
    redirect_to :action => "index"
  end



  private
  def find_member
     @member = Member.find(params[:id])
  end
end

