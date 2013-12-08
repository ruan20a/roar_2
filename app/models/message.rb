class Message
  include MongoMapper::Document

  key :text, String
  timestamps!

  belongs_to :conversation
  belongs_to :user
end