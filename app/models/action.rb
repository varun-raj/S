class Action < ActiveRecord::Base
  belongs_to :activity
  belongs_to :entity
  belongs_to :post
end
