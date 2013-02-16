class Idiom < ActiveRecord::Base
  attr_accessible :description, :word
  has_many :essays
end
