class NameVehicle < ActiveRecord::Base
  
  belongs_to :name
  belongs_to :vehicle
  
  
  
  
  def self.search(search, page)
    paginate :per_page => 25, :page => page,
             :conditions => [' tipo_relazione LIKE ? or inizio_relazione LIKE ? or fine_relazione LIKE ? or vehicles.targa LIKE ? or vehicles.modello LIKE ? or names.cognome_nome LIKE ?', 
               "%#{search}%","%#{search}%","%#{search}%","%#{search}%","%#{search}%","%#{search}%"],
             :include => [:name, :vehicle],
             :order => 'names.cognome_nome'
  end
  
  
end
