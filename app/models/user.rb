class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :prototypes 
  has_many :comments

  validates :position, presence: true
  validates :name, presence: true
  validates :occupation, presence: true
  validates :profile, presence: true       
end
