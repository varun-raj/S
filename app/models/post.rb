class Post < ActiveRecord::Base
  belongs_to :user
    mount_uploader :attachment, AttachmentUploader
      acts_as_likeable
      acts_as_commentable
end
