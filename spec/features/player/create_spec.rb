require 'spec_helper'
# rspec --format documentation spec/features/player/create_spec.rb

describe "Create Players" do
  def create_player(options={})
    options[:p_one] ||= "Andre"
    options[:p_two] ||= "Bob"
    
    visit "/games"
    click_link "Start Game"
    
    expect(page).to have_content("New Game")
    
    fill_in "P one",   with: options[:p_one]
    fill_in "P two",   with: options[:p_two]
    
    click_button "Start Game"
    
  end
  
  it "should display Farkle play page on success" do
    create_player
    
    expect(page).to have_content("Round 1")
  end
end
