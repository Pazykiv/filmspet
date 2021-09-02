class User < ApplicationRecord

  enum role: { customer: 0, admin: 1 }
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  after_initialize do
    if self.new_record?
      self.role ||= :customer
    end
  end
end
