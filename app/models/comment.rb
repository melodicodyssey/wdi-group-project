
class Comment < ActiveRecord::Base
  belongs_to :clip
  belongs_to :user
end
