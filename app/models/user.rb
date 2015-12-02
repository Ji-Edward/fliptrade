class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  validates :username, presence: true, uniqueness: true
  has_many :items
  devise :database_authenticatable, :registerable,
     :recoverable, :rememberable, :trackable, :validatable

acts_as_messageable
    def mailboxer_name
      self.name
    end

    def mailboxer_email(object)
      self.email
    end

    def admin?
      role == "admin"
    end

    def guest?
      role == "guest"
    end
end
