class Blog < ActiveRecord::Base
  belongs_to :categories
  
  scope :visible, -> { where("visible = ?", true) }
end
