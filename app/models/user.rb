class User < ApplicationRecord
  enum role: { customer: 0, admin: 1 }

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  private

  def assign_role_for_user
    self.role ||= :customer if new_record?
  end
end
