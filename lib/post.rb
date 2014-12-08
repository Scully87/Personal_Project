require 'dm-timestamps'
require 'dm-validations'

class Post

  include DataMapper::Resource

  property :id,     Serial
  property :name, String, :required => true, :length => 3..20
  property :body,  String, :required => true, :length => 5..500 
  property :created_at, DateTime

  validates_length_of :name,  :message => "Please Enter Your Name"
  validates_length_of :body,  :message => "Please Enter Your Comment"

end