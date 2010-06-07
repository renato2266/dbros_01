class Association < ActiveRecord::Base
  has_many :names
  belongs_to :area
  has_and_belongs_to_many :dossiers
  
  
  
  
  def self.search(search, page)
    paginate :per_page => 25, :page => page,
             :conditions => ['associazione_criminale LIKE ? or note_associazione LIKE ? ', "%#{search}%","%#{search}%"],
             :order => 'associazione_criminale'
  end
  
  
  
end
