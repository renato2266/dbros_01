class NamesController < ApplicationController
  # GET /names
  # GET /names.xml
  before_filter :login_required, :only => [:create, :new, :edit, :update, :destroy]
  
  def index
      @names = Name.all
      @names = Name.search(params[:search], params[:page])
      
  
      
      
    #@names = Name.search(params[:search])
  
   

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @names }
    end
  end

  # GET /names/1
  # GET /names/1.xml
  def show
    @name = Name.find(params[:id])
    @investigations = @name.investigations
    @ambit = @name.ambit
    @area = @name.area
    @association = @name.association
    @related_names = @name.related_names
    @dossiers = @name.dossiers
    @galleries = @name.galleries
    @fascicles = @name.fascicles
    @societies = @name.societies
    @vehicles = @name.vehicles

    

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @name }
    end
  end

  # GET /names/new
  # GET /names/new.xml
  def new
    @name = Name.new
    @investigations = Investigation.find(:all, :order => "indagine ASC")
    @names = Name.find(:all, :order => "cognome_nome ASC")
    @ambits = Ambit.find(:all, :order => "ambito_criminale ASC")
    @areas = Area.find(:all, :order => "area_criminale ASC")
    @associations = Association.find(:all, :order => "associazione_criminale ASC")
    @dossiers = Dossier.find :all
   
    
   
    

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @name }
    end
  end

  # GET /names/1/edit
  def edit
    @name = Name.find(params[:id])
 
    @investigations = Investigation.find(:all, :order => "indagine ASC")
    @names = Name.find(:all, :order => "cognome_nome ASC")
    @ambits = Ambit.find(:all, :order => "ambito_criminale ASC")
    @areas = Area.find(:all, :order => "area_criminale ASC")
    @associations = Association.find(:all, :order => "associazione_criminale ASC")
   
  end

  # POST /names
  # POST /names.xml
  def create
    @name = Name.new(params[:name])
    
 
    respond_to do |format|
      if @name.save
        flash[:notice] = 'Name was successfully created.'
        format.html { redirect_to(@name) }
        format.xml  { render :xml => @name, :status => :created, :location => @name }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @name.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /names/1
  # PUT /names/1.xml
  def update
    @name = Name.find(params[:id]) 
    params[:name][:investigation_ids] ||= []

    respond_to do |format|
      if @name.update_attributes(params[:name])
        flash[:notice] = 'Name was successfully updated.'
        format.html { redirect_to(@name) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @name.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /names/1
  # DELETE /names/1.xml
  def destroy
    @name = Name.find(params[:id])
    @name.destroy

    respond_to do |format|
      format.html { redirect_to(names_url) }
      format.xml  { head :ok }
    end
  end

  def search
   

  end

  def show_search_results
    search_fields = params[:search_fields]
   

    condizioni = []
    valori = {}
    unless search_fields.nil?
      search_fields.each do |campo, valore|
        next if valore.blank?
        condizioni << "#{campo} like :#{campo}"
        valori[campo.intern] = "%#{valore}%"
      end
      
    end

    unless params[:data_field].blank?
      data = params[:data_field][:data_nascita]
      logger.debug "data = #{data}"
    end

    @names = Name.find :all, 
    :conditions => [condizioni.join(" AND "), valori],
    :joins => " LEFT JOIN  ambits ON names.ambit_id=ambits.id 
                LEFT JOIN  areas ON names.area_id=areas.id 
                LEFT JOIN  associations ON names.association_id=associations.id"
            
            #:include => [:ambit, :area, :association]
   
  end

end

