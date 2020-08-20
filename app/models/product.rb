class Product < ApplicationRecord
  has_many :collects, :dependent => :destroy
  has_many :collected_users, through: :collects, source: :user

  def find_collect(user)
    self.collects.where(:user_id => user.id).first
  end
end
