class InterceptionsController < ApplicationController
  # GET /interceptions
  # GET /interceptions.xml
   before_filter :login_required, :only => [:create, :new, :edit, :update, :destroy]
  
  def index
    @interceptions = Interception.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @interceptions }
    end
  end

  # GET /interceptions/1
  # GET /interceptions/1.xml
  def show
    @interception = Interception.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @interception }
    end
  end

  # GET /interceptions/new
  # GET /interceptions/new.xml
  def new
    @interception = Interception.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @interception }
    end
  end

  # GET /interceptions/1/edit
  def edit
    @interception = Interception.find(params[:id])
  end

  # POST /interceptions
  # POST /interceptions.xml
  def create
    @interception = Interception.new(params[:interception])

    respond_to do |format|
      if @interception.save
        flash[:notice] = 'Interception was successfully created.'
        format.html { redirect_to(@interception) }
        format.xml  { render :xml => @interception, :status => :created, :location => @interception }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @interception.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /interceptions/1
  # PUT /interceptions/1.xml
  def update
    @interception = Interception.find(params[:id])

    respond_to do |format|
      if @interception.update_attributes(params[:interception])
        flash[:notice] = 'Interception was successfully updated.'
        format.html { redirect_to(@interception) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @interception.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /interceptions/1
  # DELETE /interceptions/1.xml
  def destroy
    @interception = Interception.find(params[:id])
    @interception.destroy

    respond_to do |format|
      format.html { redirect_to(interceptions_url) }
      format.xml  { head :ok }
    end
  end
end
