class Name < ActiveRecord::Base
   
  belongs_to :ambit
  belongs_to :area
  belongs_to :association
  
  has_many :interceptions
  
  has_many :name_vehicles
  has_many :vehicles, :through => :name_vehicles

  has_and_belongs_to_many :investigations
  has_and_belongs_to_many :dossiers
  has_and_belongs_to_many :galleries
  has_and_belongs_to_many :fascicles
  has_and_belongs_to_many :societies


  
  has_and_belongs_to_many :related_names, 
    :class_name => "Name", 
    :join_table => "related_names", 
    :foreign_key => "main_name_id", 
    :association_foreign_key => "related_name_id"


 

  has_attached_file :photo, :styles => { :small => "300x300>" },
    :url  => "/assets/avatar/:id/:style/:basename.:extension",
    :path => ":rails_root/public/assets/avatar/:id/:style/:basename.:extension"
  


  #validates_attachment_presence :photo
  #validates_attachment_size :photo, :less_than => 5.megabytes
  #validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png']


  validates_presence_of :cognome_nome


#SENZA WILL_PAGINATE
 # def self.search(search)
  #  if search
   #   find(:all, :conditions => ['cognome_nome LIKE ? or luogo_nascita LIKE ? or data_nascita LIKE ? or residenza LIKE ?', "%#{search}%","%#{search}%",
    #      "%#{search}%", "%#{search}%",], :order => 'cognome_nome ASC')
#    else
 #     find(:all, :order => 'cognome_nome ASC')
  #  end
  #end
  

  def self.search(search, page)
    paginate :per_page => 25, :page => page,
             :conditions => ['cognome_nome LIKE ? or luogo_nascita LIKE ? or data_nascita LIKE ? or residenza LIKE ?
                or ambits.ambito_criminale LIKE ? or areas.area_criminale LIKE ? or associations.associazione_criminale
                LIKE ? or societies.denominazione LIKE ? ',
                "%#{search}%","%#{search}%", "%#{search}%", "%#{search}%","%#{search}%","%#{search}%","%#{search}%",
                "%#{search}%",],
                 :include => [:ambit, :area, :association, :societies],
                 
             :order => 'cognome_nome'
  end
  
end


