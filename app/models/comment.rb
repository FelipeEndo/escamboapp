class Comment < ActiveRecord::Base
  belongs_to :member
  belongs_to :ad, counter_cache: true
end
