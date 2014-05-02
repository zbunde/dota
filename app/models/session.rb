class Session <  ActiveRecord::Base
  validates :email, presence: {messsage: "Email must not be blank"}
  validates :password_digest, presence: true

end