class DossiersController < ApplicationController
  # GET /dossiers
  # GET /dossiers.xml
   before_filter :login_required, :only => [:create, :new, :edit, :update, :destroy]
  
  def index
    @dossiers = Dossier.all
    @dossiers = Dossier.search(params[:search], params[:page])

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @dossiers }
    end
  end

  # GET /dossiers/1
  # GET /dossiers/1.xml
  def show
    @dossier = Dossier.find(params[:id])
    @names = @dossier.names
    @societies = @dossier.societies
    @associations = @dossier.associations

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @dossier }
    end
  end

  # GET /dossiers/new
  # GET /dossiers/new.xml
  def new
    @dossier = Dossier.new
    @names = Name.find(:all, :order => "cognome_nome ASC")
    @societies = Society.find(:all, :order => "denominazione ASC")
    @associations = Association.find(:all, :order => "associazione_criminale ASC")

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @dossier }
    end
  end

  # GET /dossiers/1/edit
  def edit
    @dossier = Dossier.find(params[:id])
    @names = Name.find(:all, :order => "cognome_nome ASC")
    @societies = Society.find(:all, :order => "denominazione ASC")
    @associations = Association.find(:all, :order => "associazione_criminale ASC")
  end

  # POST /dossiers
  # POST /dossiers.xml
  def create
    @dossier = Dossier.new(params[:dossier])

    respond_to do |format|
      if @dossier.save
        flash[:notice] = 'Dossier was successfully created.'
        format.html { redirect_to(@dossier) }
        format.xml  { render :xml => @dossier, :status => :created, :location => @dossier }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @dossier.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /dossiers/1
  # PUT /dossiers/1.xml
  def update
    @dossier = Dossier.find(params[:id])

    respond_to do |format|
      if @dossier.update_attributes(params[:dossier])
        flash[:notice] = 'Dossier was successfully updated.'
        format.html { redirect_to(@dossier) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @dossier.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /dossiers/1
  # DELETE /dossiers/1.xml
  def destroy
    @dossier = Dossier.find(params[:id])
    @dossier.destroy

    respond_to do |format|
      format.html { redirect_to(dossiers_url) }
      format.xml  { head :ok }
    end
  end
end
