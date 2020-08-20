class User < ApplicationRecord
  has_secure_password
  has_many :collects, :dependent => :destroy
  has_many :collected_products, through: :collects, source: :product
end
