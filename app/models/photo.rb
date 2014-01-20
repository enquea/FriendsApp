class Photo < ActiveRecord::Base
  attr_accessible :title, :url, :circle_id, :user_id, :file

  belongs_to :user
  belongs_to :circle

  has_attached_file :file, :styles => {
    :big => "600x600>",
    :small => "50x50#"
  }

end
