class Signup < ActiveRecord::Base
  attr_accessible :email, :candidate, :referrer_insider, :referrer_peer, :hiring_manager, :internal_recruiter, :thirdparty_recruiter

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email,
      presence: true,
      format: { with: VALID_EMAIL_REGEX },
      uniqueness: { case_sensitive: false },
      length: { maximum: 50 }

  before_save :tidy_email

  def tidy_email
    self.email = email.downcase
  end

end
