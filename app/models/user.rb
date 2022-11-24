class User < ApplicationRecord
  has_many :tweets
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  enum role: [:Lourice, :moderador, :admim]
  after_initialize :set_default_role, :if => :new_record?
  def set_default_role
    self.role ||= :user
  end
end