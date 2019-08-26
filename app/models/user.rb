class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :facilities
  has_many :reviews, dependent: :destroy

  validates :first_name, presence: true, on: :update
  validates :last_name, presence: true, on: :update
  validates :email, presence: true, on: :update
  validates :password, presence: true, on: :update
  validates :country, presence: true, on: :update
end
