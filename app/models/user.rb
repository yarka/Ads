class User < ActiveRecord::Base

  before_create :set_role_to_default_user
  has_many :ads, :dependent => :destroy

  ROLES = %w[admin signed_user]
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :role, :password_confirmation, :remember_me, :first_name, :last_name

  protected

  def set_role_to_default_user
    if self.role.blank?
      self.role = "signed_user"
    end
  end
end
