require 'spec_helper'

feature "User adds a new post" do

  scenario "when browsing the homepage" do
    expect(Post.count).to eq(0)
    visit '/'
    add_post("whatsup")
    expect(Post.count).to eq(1)
    post = Post.first
    expect(post.body).to eq("whatsup")
  end

  def add_post(body)
    within('#new-post') do
      fill_in 'body', :with => "whatsup"
      click_button 'Add Post'
    end      
  end

end