class Post

  include DataMapper::Resource

  property :id,     Serial
  property :name, String
  property :body,  String

end