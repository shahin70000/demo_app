class Micropost < ActiveRecord::Base
  attr_accessible :content, :user_id
  validates_length_of :content, :within => 1..140, :message => "must be less than 140"
	belongs_to :user
end
