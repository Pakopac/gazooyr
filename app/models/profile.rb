class Profile < ApplicationRecord
  validates_presence_of :avatar, :background, :user_id, :name, :place, :website, :bio
  belongs_to :user
end
