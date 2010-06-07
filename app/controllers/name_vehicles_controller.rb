class NameVehiclesController < ApplicationController
  # GET /name_vehicles
  # GET /name_vehicles.xml
  
   before_filter :login_required, :only => [:create, :new, :edit, :update, :destroy]
  
  def index
    @name_vehicles = NameVehicle.all
    @name_vehicles = NameVehicle.search(params[:search], params[:page])
   

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @name_vehicles }
    end
  end

  # GET /name_vehicles/1
  # GET /name_vehicles/1.xml
  def show
    @name_vehicle = NameVehicle.find(params[:id])
    @name = @name_vehicle.name
    @vehicle = @name_vehicle.vehicle
    


    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @name_vehicle }
    end
  end

  # GET /name_vehicles/new
  # GET /name_vehicles/new.xml
  def new
    @name_vehicle = NameVehicle.new
    @names = Name.find(:all, :order => "cognome_nome ASC")
    @vehicles = Vehicle.find(:all, :order => "targa ASC")
   

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @name_vehicle }
    end
  end

  # GET /name_vehicles/1/edit
  def edit
    @name_vehicle = NameVehicle.find(params[:id])
     @names = Name.find(:all, :order => "cognome_nome ASC")
      @vehicles = Vehicle.find(:all, :order => "targa ASC")
  end

  # POST /name_vehicles
  # POST /name_vehicles.xml
  def create
    @name_vehicle = NameVehicle.new(params[:name_vehicle])

    respond_to do |format|
      if @name_vehicle.save
        flash[:notice] = 'NameVehicle was successfully created.'
        format.html { redirect_to(@name_vehicle) }
        format.xml  { render :xml => @name_vehicle, :status => :created, :location => @name_vehicle }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @name_vehicle.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /name_vehicles/1
  # PUT /name_vehicles/1.xml
  def update
    @name_vehicle = NameVehicle.find(params[:id])

    respond_to do |format|
      if @name_vehicle.update_attributes(params[:name_vehicle])
        flash[:notice] = 'NameVehicle was successfully updated.'
        format.html { redirect_to(@name_vehicle) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @name_vehicle.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /name_vehicles/1
  # DELETE /name_vehicles/1.xml
  def destroy
    @name_vehicle = NameVehicle.find(params[:id])
    @name_vehicle.destroy

    respond_to do |format|
      format.html { redirect_to(name_vehicles_url) }
      format.xml  { head :ok }
    end
  end
end
