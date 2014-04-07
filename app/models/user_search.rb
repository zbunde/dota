class UserSearch < Struct.new(:username)
  def users
    @users ||= User.where("username ILIKE ?", "%#{username}%")
  end
end