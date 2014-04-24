class Session <  ActiveRecord::Base
  validates :email, presence: {messsage: "Email must not be blnak"}
  validates :password, presence: true

end