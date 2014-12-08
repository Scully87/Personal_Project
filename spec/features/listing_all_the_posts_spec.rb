require 'spec_helper'

feature "User browses the list of posts" do

  before(:each) {
    Post.create(:body => 'whatsup', :name => 'timmy')
  }

  scenario "when opening the home page" do
    visit '/'
    expect(page).to have_content('whatsup')
  end
end