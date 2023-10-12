class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :avatar
  has_many :posts

  def gravatar(size)
    gravatar_id = Digest::MD5::hexdigest(self.email).downcase
    "https://gravatar.com/avatar/#{gravatar_id}.png?s=#{size}&d=mm"
  end

end
