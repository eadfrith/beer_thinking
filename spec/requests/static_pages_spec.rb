require 'spec_helper'

describe "Static pages" do
	before { visit root_path } 

  subject { page }
  let(:base_title) { "Beer Thinking" }

  describe "Home page" do

  	before { visit root_path }

  	it { should have_selector('h1',    text: 'Beer Thinking') }
    it { should have_selector('title', text: full_title('')) }

  end
  
  describe "Help page" do
    before { visit help_path }

    it { should have_selector('h1',    text: 'Help') }
    it { should have_selector('title', text: full_title('Help')) }
  end

  describe "About page" do
    before { visit about_path }

    it { should have_selector('h1',    text: 'About') }
    it { should have_selector('title', text: full_title('About Us')) }
  end
end
