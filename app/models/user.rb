class User < ApplicationRecord

  # belongs_to :employee
  validates :username, presence: true, uniqueness: true

  belongs_to :employee

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
