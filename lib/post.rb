require 'dm-timestamps'
require 'dm-validations'

class Post

  include DataMapper::Resource

  property :id,     Serial
  property :name, String
  property :body,  String
  property :created_at, DateTime

end