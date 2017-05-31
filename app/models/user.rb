# == Schema Information
#
# Table name: users
#
#  id                       :integer          not null, primary key
#  email                    :string           default(""), not null
#  encrypted_password       :string           default(""), not null
#  reset_password_token     :string
#  reset_password_sent_at   :datetime
#  remember_created_at      :datetime
#  sign_in_count            :integer          default("0"), not null
#  current_sign_in_at       :datetime
#  last_sign_in_at          :datetime
#  current_sign_in_ip       :string
#  last_sign_in_ip          :string
#  name                     :string
#  image_url                :string
#  phone                    :string
#  slack                    :string
#  preferred_contact_method :string
#  created_at               :datetime         not null
#  updated_at               :datetime         not null
#

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :slack, :presence => true
  validates :preferred_contact_method, :presence => true
  validates :phone, :numericality => true
  validates :phone, :presence => true
  validates :name, :presence => true
  validates :name, :uniqueness => true


  has_many :tickets, :dependent => :destroy
  has_many :events, :through => :tickets, :source => :event
end
