class User < ActiveRecord::Base
	  has_many :drafts
	  validates :email, :first_name, :last_name, :username, presence: true
    validates :email, uniqueness: true
    has_secure_password
end
