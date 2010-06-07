class Dossier < ActiveRecord::Base
  
  has_and_belongs_to_many :names
  has_and_belongs_to_many :societies
  has_and_belongs_to_many :associations
  
  has_attached_file :documento, 
    :url  => "/assets/dossiers/:id/:style/:basename.:extension",
    :path => ":rails_root/public/assets/dossiers/:id/:style/:basename.:extension"
    
    validates_attachment_presence :documento
    
    
    
    
    
    def self.search(search, page)
      paginate :per_page => 25, :page => page,
               :conditions => ['numero LIKE ? or data LIKE ? or oggetto LIKE ? or testo LIKE ? or names.cognome_nome LIKE ?',
                  "%#{search}%","%#{search}%","%#{search}%" ,"%#{search}%","%#{search}%"],
               :include => [:names],
               :order => 'names.cognome_nome'
    end
    
  
end
