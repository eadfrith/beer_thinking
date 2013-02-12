require 'spec_helper'

describe "Recipe pages" do

  subject { page }

  let(:user) { FactoryGirl.create(:user) }
  before { sign_in user }

  describe "recipe creation" do
    before { visit new_recipe_path }

    describe "with invalid information" do

      it "should not create a recipe" do
        expect { click_button "Create recipe" }.not_to change(Recipe, :count)
      end

      describe "error messages" do
        before { click_button "Create recipe" }
        it { should have_content('error') } 
      end
    end

    describe "with valid information" do

      before { fill_in 'recipe_code', with: "WW1-Summer-Ale-Extract-1" }
      it "should create a recipe" do
        expect { click_button "Create recipe" }.to change(Recipe, :count).by(1)
      end
    end
  end
end
