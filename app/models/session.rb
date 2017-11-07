class Session < ApplicationRecord
  belongs_to :user

  attr_accessor :password, :username

  before_validation :validate_user, on: :create


  def validate_user
    self.user = User.find_by(username: username).authenticate(password)
    raise 'Invalid login' unless self.user
  end
end
