class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates_uniqueness_of :username
  validates_uniqueness_of :nickname
  validates_uniqueness_of :student_number
  mount_uploader :verifyimage, VerifyUploader
  
end
