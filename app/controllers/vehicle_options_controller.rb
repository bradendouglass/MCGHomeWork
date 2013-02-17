class VehicleOptionsController < ApplicationController
  def new
    @vehicle = Vehicle.find(params[:vehicle_id])
    @vehicle_option = @vehicle.vehicle_options.new
  end

  def create
    @vehicle = Vehicle.find(params[:vehicle_id])
    @vehicle_options = @vehicle.vehicle_options.new(params[:vehicle_options])
    if @vehicle_options.save?
      redirect_to vehicle_path(@vehicle), :notice => "Successfully added vehicle option"
    else
      render :new, :error => "There was an error adding the vehicle option. Please try again"
    end
  end

  def destroy
    @vehicle = Vehicle.find(params[:vehicle_id])
    @vehicle_option.find(params[:id])
    @vehicle_option.destroy
    redirect_to vehicle_path(@vehicle), :notice => "Option removed"
  end
end
