class Ticket < ApplicationRecord
  validates :user_id, :presence => true
  validates :user_id, :uniqueness => true
  validates :ticket_type, :presence => true
  validates :quantity, :numericality => true
  validates :quantity, :presence => true
  validates :price, :numericality => true
  validates :price, :presence => true
  validates :event_id, :uniqueness => true
  validates :contact_method, :presence => true

  belongs_to :user
  belongs_to :event

end
