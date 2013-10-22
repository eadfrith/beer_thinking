# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  email      :string(255)
#  williams_warn_number      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ActiveRecord::Base
  attr_accessible :email, :name, :williams_warn_number, :password, :password_confirmation, :secret_code, :recipe_attributes, :brew_attributes
  has_secure_password
  has_many :recipes, :inverse_of => :user, dependent: :destroy
  has_many :brews, :inverse_of => :user, dependent: :destroy

  before_save { |user| user.email = email.downcase }
  before_save :create_remember_token

  validates :name,  presence: true, length: { maximum: 50 }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }

  validates :password, length: { minimum: 6 }
  validates :password_confirmation, presence: true
  
  #VALID_SECRET_CODE = /[W][W][4][E][v][a][!]/
  #validates :secret_code, format: {with: VALID_SECRET_CODE}

  VALID_WW_REGEX = /\A[W][W][1-9][0-9]{0,5}\z/
  validates :williams_warn_number, presence:true, format: { with: VALID_WW_REGEX }, uniqueness: true

  private

    def create_remember_token
      self.remember_token = SecureRandom.urlsafe_base64
    end


end
