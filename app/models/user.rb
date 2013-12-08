# require 'bcrypt'
class User
  include MongoMapper::Document

  key :name, String, :required =>true
  key :email, String
  key :password_digest, String
  key :conversation_ids, Array
  key :longitude, Float
  key :latitude, Float
  timestamps!

  many :messages
  #many-to-many relationship for user & conversations
  many :conversations, :in => :conversation_ids
end

