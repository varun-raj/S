class Post < ActiveRecord::Base
    belongs_to :user
    mount_uploader :attachment, AttachmentUploader
    acts_as_likeable
    acts_as_commentable
    has_one :action
    accepts_nested_attributes_for :action, :allow_destroy => true
end
