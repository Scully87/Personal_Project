require 'sinatra'
require 'data_mapper'

env = ENV["RACK_ENV"] || "development"
DataMapper.setup(:default, "postgres://localhost/onnie_#{env}")

require './lib/post'

DataMapper.finalize

DataMapper.auto_upgrade!

set :partial_template_engine, :erb
set :public_folder, Proc.new { File.join(root, '.', 'public') }


get '/' do
  @posts = Post.all
  erb :index
end

post '/posts' do
  body = params["body"]
  name = params["name"]
  Post.create(:body => body, :name => name)
  redirect to '/'
end