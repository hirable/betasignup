class Signup < ActiveRecord::Base
  attr_accessible :originator_email, :referrer_email, :candidate_email

VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

 
    validates :originator_email,
      format: { with: VALID_EMAIL_REGEX },
      uniqueness: { case_sensitive: false },
      length: { maximum: 50 },
      :if => :originator_email
  


  validates :referrer_email,
    format: { with: VALID_EMAIL_REGEX },
    uniqueness: { case_sensitive: false },
    length: { maximum: 50 },
    :if => :referrer_email


  validates :candidate_email,
    format: { with: VALID_EMAIL_REGEX },
    uniqueness: { case_sensitive: false },
    length: { maximum: 50 },
    :if => :candidate_email

 #before_save :tidy_email

 # def tidy_email
 #   self.email = email.downcase
 # end

end
