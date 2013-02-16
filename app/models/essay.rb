class Essay < ActiveRecord::Base
  attr_accessible :idiom_id, :bad_count, :copy, :good_count
  belongs_to :idiom
end
