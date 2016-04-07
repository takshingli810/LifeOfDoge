class User < ActiveRecord::Base
has_many :doges

# unique email and username
validates :username, uniqueness: true
validates :email, uniqueness: true

# changes password into password_digest
has_secure_password

 def self.confirm(params)
    # used in session controller
    @user = User.find_by({username: params[:username]})
    @user.try(:authenticate, params[:password])
 end

end
