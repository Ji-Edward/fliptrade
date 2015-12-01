class Item < ActiveRecord::Base
  belongs_to :user
<<<<<<< HEAD
  belongs_to :category
  validates :title, presence: true
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  
=======
  validates :title, presence: true
>>>>>>> 6d5d9cd7ecbd7caf6903b80376004256dd51da94
end
