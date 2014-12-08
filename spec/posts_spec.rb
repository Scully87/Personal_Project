require 'spec_helper'

describe Post do

  context 'Demonstration of how datamapper works' do

    it 'should be created and then retrieved from the db' do
      expect(Post.count).to eq(0)
      Post.create(body: 'whatsup')
      expect(Post.count).to eq(1)
      post = Post.first
      expect(post.body).to eq('whatsup')
      post.destroy
      expect(Post.count).to eq(0)
    end

  end

end