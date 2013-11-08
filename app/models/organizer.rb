class Organizer < ActiveRecord::Base
  belongs_to :larp
  belongs_to :user

  validates_presence_of :first_name, :larp_id, :user_id
  validates_format_of   :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i

  normalize_attributes  :first_name, :last_name
end