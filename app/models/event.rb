class Event < ApplicationRecord
  validates :ticket_face_value, :numericality => true
  validates :ticket_face_value, :presence => true
  validates :name, :presence => true
  validates :name, :uniqueness => { :case_sensitive => true }
  validates :event_description, :presence => true
  validates :campusgroups_url, :presence => true
  validates :address, :presence => true
  validates :starts_at, :presence => true
  validates :ends_at, :presence => true

  has_many :tickets, :dependent => :destroy
  has_many :users, :through => :tickets, :source => :user
end
