class Event < ApplicationRecord
  validates :ticket_face_value, :numericality => true
  validates :ticket_face_value, :presence => true
  validates :start_time, :presence => true
  validates :start_date, :presence => true
  validates :name, :presence => true
  validates :name, :uniqueness => { :case_sensitive => true }
  validates :event_description, :presence => true
  validates :end_time, :presence => true
  validates :end_date, :presence => true
  validates :campusgroups_url, :presence => true
  validates :campusgroups_url, :uniqueness => true
  validates :address, :presence => true

  has_many :tickets, :dependent => :destroy
  has_many :users, :through => :tickets, :source => :user
end
