class FasciclesController < ApplicationController
  # GET /fascicles
  # GET /fascicles.xml
  before_filter :login_required, :only => [:create, :new, :edit, :update, :destroy]
  
  def index
    @fascicles = Fascicle.all :order => "numero DESC"

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @fascicles }
    end
  end

  # GET /fascicles/1
  # GET /fascicles/1.xml
  def show
    @fascicle = Fascicle.find(params[:id])
     @names = @fascicle.names
     @societies = @fascicle.societies

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @fascicle }
    end
  end

  # GET /fascicles/new
  # GET /fascicles/new.xml
  def new
    @fascicle = Fascicle.new
    @names = Name.find(:all, :order => "cognome_nome ASC")
    @societies = Society.find(:all, :order => "denominazione ASC")

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @fascicle }
    end
  end

  # GET /fascicles/1/edit
  def edit
    @fascicle = Fascicle.find(params[:id])
    @names = Name.find(:all, :order => "cognome_nome ASC")
    @societies = Society.find(:all, :order => "denominazione ASC")
  end

  # POST /fascicles
  # POST /fascicles.xml
  def create
    @fascicle = Fascicle.new(params[:fascicle])

    respond_to do |format|
      if @fascicle.save
        flash[:notice] = 'Fascicle was successfully created.'
        format.html { redirect_to(@fascicle) }
        format.xml  { render :xml => @fascicle, :status => :created, :location => @fascicle }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @fascicle.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /fascicles/1
  # PUT /fascicles/1.xml
  def update
    @fascicle = Fascicle.find(params[:id])

    respond_to do |format|
      if @fascicle.update_attributes(params[:fascicle])
        flash[:notice] = 'Fascicle was successfully updated.'
        format.html { redirect_to(@fascicle) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @fascicle.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /fascicles/1
  # DELETE /fascicles/1.xml
  def destroy
    @fascicle = Fascicle.find(params[:id])
    @fascicle.destroy

    respond_to do |format|
      format.html { redirect_to(fascicles_url) }
      format.xml  { head :ok }
    end
  end
end
