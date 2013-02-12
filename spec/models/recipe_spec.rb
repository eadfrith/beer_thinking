require 'spec_helper'

describe Recipe do

  let(:user) { FactoryGirl.create(:user) }
  before { @recipe = user.recipes.build(recipe_code: "WW1-Summer-Ale-Ex-1", original_gravity: "1.040") }

  subject { @recipe }

  it { should respond_to(:recipe_code) }
  it { should respond_to(:original_gravity) }
  it { should respond_to(:user_id) }
  it { should respond_to(:user) }

  its(:user) { should == user }

  it { should be_valid }

  describe "accessible attributes" do
    it "should not allow access to user_id" do
      expect do
        Recipe.new(user_id: user.id)
      end.to raise_error(ActiveModel::MassAssignmentSecurity::Error)
    end    
  end

  describe "when user_id is not present" do
    before { @recipe.user_id = nil }
    it { should_not be_valid }
  end

  describe "when user_id is not present" do
    before { @recipe.user_id = nil }
    it { should_not be_valid }
  end

  describe "with blank original_gravity" do
    before { @recipe.original_gravity = " " }
    it { should_not be_valid }
  end


  describe "when recipe_code is not present" do
    before { @recipe.recipe_code = nil }
    it { should_not be_valid }
  end

  describe "when recipe_code is blank" do
    before { @recipe.recipe_code = " " }
    it { should_not be_valid }
  end

  describe "when original is not present" do
    before { @recipe.original_gravity = nil }
    it { should_not be_valid }
  end

  describe "when original_gravity is blank" do
    before { @recipe.original_gravity = " " }
    it { should_not be_valid }
  end


  describe "when original_gravity format is invalid" do
    it "should be invalid" do
      gravity = %w[1.0 1.00 1.0001 0.1 0.111]
      gravity.each do |invalid_gravity|
        @recipe.original_gravity = invalid_gravity
        @recipe.should_not be_valid
      end      
    end
  end

  describe "when original_gravity format is valid" do
    it "should be valid" do
      gravity = %w[1.000 1.030 1.100 1.041]
      gravity.each do |valid_gravity|
        @recipe.original_gravity = valid_gravity
        @recipe.should be_valid
      end      
    end
  end
end

