class User < ActiveRecord::Base
  ROLES = %w[Administrador Usuario Bloqueado]
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable, :lockable and :timeoutable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :timeoutables

  # Setup accessible (or protected) attributes for your model
  attr_accessible :nome, :username, :email, :password, :password_confirmation, :remember_me, :role
  
  
end
