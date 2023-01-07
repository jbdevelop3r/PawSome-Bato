class User < ApplicationRecord
# Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :posts
  has_many :reviews
  has_many :transactions

  after_create :send_welcome_email

  def send_welcome_email
    UserMailer.welcome.deliver_now
  end
end
