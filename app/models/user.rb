class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :places, dependent: :destroy
  has_many :bookings
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :first_name, uniqueness: { scope: :last_name }
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
