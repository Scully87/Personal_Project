class Post

  include DataMapper::Resource

  property :id,     Serial
  property :body,  String

end