require 'spec_helper'
# rspec spec/features/blog/create_spec.rb

describe "Creating Blogs" do
  
  def create_blog(options={})
    options[:title]     ||= "My First Blog"
    options[:body]      ||= "This is the body of the blog. Isnt it great"
    options[:visible]   ||= true
    
    
    visit "/blogs"
    click_link "New Blog"
    expect(page).to have_content("New blog")
    
    fill_in "Title",      with: options[:title]
    fill_in "Body",       with: options[:body]
    check('Visible')
    
    click_button "Create Blog"
  end 
  
  it "should not display the blog in the index when visible is unchecked" do
    #if statement didnt work in the create_blog method    
    visit "/blogs"
    click_link "New Blog"
    expect(page).to have_content("New blog")
    
    fill_in "Title",      with: "My First Blog"
    fill_in "Body",       with: "This is the body of the blog. Isnt it great"
    
    click_button "Create Blog"
    
    visit "/blogs"
    expect(page).not_to have_content("My First Blog")
  end
  
  it "to the blog show page success" do
    create_blog
    
    expect(page).to have_content("My First Blog")
  end
  
  
  
  
end

