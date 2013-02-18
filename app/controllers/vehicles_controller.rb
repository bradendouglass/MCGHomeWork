class VehiclesController < ApplicationController
  helper_method :sort_column, :sort_direction
  def index
    @vehicles = Vehicle.search(params[:search], params[:field]).order(sort_column + " " + sort_direction)
    @search_columns = {'Status' => 'status', 'Stock #' => 'stock_num', 'Model' => 'model', 'Make' => 'make', 'Year' => 'year'}
  end

  def show
    @vehicle = Vehicle.find(params[:id])
    @options = @vehicle.vehicle_option.all
  end

  def new
    @vehicle = Vehicle.new
  end

  def edit
    @vehicle = Vehicle.find(params[:id])
  end

  def create
    @vehicle = Vehicle.new(params[:vehicle])

    respond_to do |format|
      if @vehicle.save
        format.html { redirect_to @vehicle, notice: 'Vehicle was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def update
    @vehicle = Vehicle.find(params[:id])

    respond_to do |format|
      if @vehicle.update_attributes(params[:vehicle])
        format.html { redirect_to @vehicle, notice: 'Vehicle was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  def destroy
    @vehicle = Vehicle.find(params[:id])
    @vehicle.destroy
  end

  private
  def sort_column
    params[:sort] || 'stock_num'
  end

  def sort_direction
    params[:direction] || 'asc'
  end
end
