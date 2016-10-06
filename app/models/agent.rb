class Agent < ApplicationRecord
  has_attached_file :image, path: ":rails_root/public/assets/uploads/:class/:id/:style/:filename", styles: { medium: "300x300", thumb: "100x100" }
  validates_attachment :image, content_type: {content_type: ["image/jpeg", "image/gif", "image/png"]}
end
