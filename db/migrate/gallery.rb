class Gallery < ActiveRecord::Base
  
  has_and_belongs_to_many :names
  
  has_attached_file :photo, :styles => { :thumb => "50x50#", :small => "300x300>", :large => "640x480#" },
     :url  => "/assets/galleries/:id/:style/:basename.:extension",
     :path => ":rails_root/public/assets/galleries/:id/:style/:basename.:extension"
     
   validates_attachment_content_type :photo, 
     :content_type => ['image/jpeg', 'image/pjpeg', 
                                       'image/jpg', 'image/png']
                                       
  validates_attachment_presence :photo
  
  
  
  
  
  
  
  def self.search(search, page)
    paginate :per_page => 25, :page => page,
             :conditions => ['description LIKE ? or date LIKE ? or names.cognome_nome LIKE ?', "%#{search}%","%#{search}%","%#{search}%"],
             :include => [:names],
             :order => 'names.cognome_nome'
  end
  
  
  
end
