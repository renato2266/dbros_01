class Society < ActiveRecord::Base
  
  has_and_belongs_to_many :names
  has_and_belongs_to_many :dossiers
  has_and_belongs_to_many :fascicles
  
  
  
  
  
  
  def self.search(search, page)
    paginate :per_page => 25, :page => page,
             :conditions => ['denominazione LIKE ? or forma_giuridica LIKE ? or sede LIKE ? or cf_pi LIKE ? or descrizione LIKE ? 
               or names.cognome_nome LIKE ?', "%#{search}%","%#{search}%","%#{search}%","%#{search}%","%#{search}%","%#{search}%",],
             :include => [:names],
             :order => 'societies.denominazione'
  end
  
  
  
end
