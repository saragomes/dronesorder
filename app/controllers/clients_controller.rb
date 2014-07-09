class ClientsController < ApplicationController

  respond_to :html, :json
  #before_filter :require_user
  helper_method :sort_column, :sort_direction

  def index
    search
    @clients = @clients.paginate(:per_page => 20, :page => params[:page])
    @parcels = Parcel.all.map(&:name).compact.reject(&:blank?)
    #@parcels = @current_user.categories.map(&:name).compact.reject(&:blank?)
    respond_to do |format|
      format.html
      format.js
      format.json { render json: @clients }
    end
  end

  def new
  end

  def edit
  end

  def create
    @client = Client.new(params[:client])
    @client.parcel = @parcel
    respond_to do |format|
      if @client.save
        @clients = Client.all.paginate(:per_page => 20, :page => params[:page]) 
        format.js
      else
        format.js
      end
    end
  end

  def update
  end

  def destroy
  end

  def search
  end

  private
  def search
    @clients = Client.all
    @clients = @clients.order("#{params[:sort]} #{params[:direction]}")
    @clients = @clients.joins(:category).where("clients.name like ? ", "%#{params[:search]}%") unless params[:search].blank? 
  end
  
  def sort_column
    Client.column_names.include?(params[:sort]) ? params[:sort] : "name"
  end
  
  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end
end

=begin
class clientsController < ApplicationController
  respond_to :html, :json
  before_filter :require_user
  helper_method :sort_column, :sort_direction
  
  def index
    search
    @clients = @clients.paginate(:per_page => 20, :page => params[:page])
    @categories = @current_user.categories.map(&:name).compact.reject(&:blank?)
    respond_to do |format|
      format.html
      format.js
      format.json { render json: @clients }
    end
  end

  def create
    @client = client.new(params[:client])
    @client.user = @current_user
    @client.done = false
    @category = Category.find_or_create_by_name_and_user_id params[:client][:category_id], @current_user.id
    @client.category = @category
    respond_to do |format|
      if @client.save
        @clients = @current_user.clients.paginate(:per_page => 20, :page => params[:page]) 
        format.js
      else
        format.js
      end
    end
  end

  def update
    @client = client.find(params[:id])
    @client.update_attributes(params[:client])
    respond_with @client
  end

  def destroy
    @client = @current_user.clients.find(params[:id])
    @client.destroy
    @clients = @current_user.clients.paginate(:per_page => 20, :page => params[:page])
    @client.destroy_category?
    
    respond_to do |format|
      format.html { redirect_to clients_url, notice: 'client destroyed!' }
      format.js { render :index }
    end
  end
  
  def destroy_multiple
    @clients_to_destroy = client.find params["client_ids"]
    @clients_to_destroy.each do |client|
      client.destroy
      client.destroy_category?
    end
    @clients = @current_user.clients.paginate(:per_page => 20, :page => params[:page])
    respond_to do |format|
      format.html { redirect_to clients_path }
      format.js { render :index }
    end
  end
  
  def filter_by_category
    @clients = @current_user.clients.paginate(:per_page => 20, :page => params[:page])
    @clients = @clients.all :conditions => ["category_id = ?", params[:category]] unless params[:category].eql?""
    respond_to do |format|
      format.html { redirect_to clients_path }
      format.js { render :index }
    end
  end
  
  def done
    @client = @current_user.clients.find(params[:id])
    @client.update_attribute(:done, true)
    @client.update_attribute(:done, true)
    @clients = @current_user.clients.paginate(:per_page => 20, :page => params[:page])
    respond_to do |format|
      format.html { redirect_to clients_path }
      format.js { render :index }
    end
  end
  

  
end
=end
