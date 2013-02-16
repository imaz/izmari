class Essay < ActiveRecord::Base
  attr_accessible :bad_count, :copy, :good_count
  belongs_to :idiom
end
