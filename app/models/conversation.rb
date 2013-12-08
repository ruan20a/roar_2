class Conversation

  include MongoMapper::Document

  timestamps!
  many :messages
end
