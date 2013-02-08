# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  email      :string(255)
#  williams_warn_number      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe User do

  before do
  	@user = User.new(name: "Example User", email: "user@example.com", williams_warn_number: "WW1",
  		password: "foobar", password_confirmation: "foobar")
  end

  subject { @user }

  it { should respond_to(:name) }
  it { should respond_to(:email) }
  it { should respond_to(:williams_warn_number) }
  it { should respond_to(:password_digest) }
  it { should respond_to(:password) }
  it { should respond_to(:password_confirmation) }
  it { should respond_to(:authenticate) }



  it { should be_valid }

  describe "when name is not present" do
    before { @user.name = " " }
    it { should_not be_valid }
  end

 describe "when email is not present" do
    before { @user.email = " " }
    it { should_not be_valid }
  end

 describe "when williams_warn_number is not present" do
    before { @user.williams_warn_number = " " }
    it { should_not be_valid }
  end

describe "when name is too long" do
    before { @user.name = "a" * 51 }
    it { should_not be_valid }
  end

describe "when williams_warn_number is too long" do
    before { @user.williams_warn_number = "a" * 9 }
    it { should_not be_valid }
  end

describe "when williams_warn_number format is invalid" do
    it "should be invalid" do
      wwnums = %w[WW W W1 W0 W100000 W1000000 WW1000000 1]
      wwnums.each do |invalid_wwnum|
        @user.williams_warn_number = invalid_wwnum
        @user.should_not be_valid
      end      
    end
  end

describe "when williams_warn_number format is valid" do
    it "should be valid" do
      wwnums = %w[WW1 WW10 WW100 WW1000 WW10000 WW100000]
      wwnums.each do |valid_wwnum|
        @user.williams_warn_number = valid_wwnum
        @user.should be_valid
      end      
    end
  end


describe "when email format is invalid" do
    it "should be invalid" do
      addresses = %w[user@foo,com user_at_foo.org example.user@foo.
                     foo@bar_baz.com foo@bar+baz.com]
      addresses.each do |invalid_address|
        @user.email = invalid_address
        @user.should_not be_valid
      end      
    end
  end

describe "when email format is valid" do
    it "should be valid" do
      addresses = %w[user@foo.COM A_US-ER@f.b.org frst.lst@foo.jp a+b@baz.cn]
      addresses.each do |valid_address|
        @user.email = valid_address
        @user.should be_valid
      end      
    end
  end

describe "when email address is already taken" do
    before do
      user_with_same_email = @user.dup
      user_with_same_email.email = @user.email.upcase
      user_with_same_email.save
    end

    it { should_not be_valid }
  end

describe "when williams_warn_number is already taken" do
    before do
      user_with_same_wwnumber = @user.dup
      user_with_same_wwnumber.email = "jerome@jerome.com"
      user_with_same_wwnumber.save
    end

    it { should_not be_valid }
  end

describe "when password is not present" do
  before { @user.password = @user.password_confirmation = " " }
  it { should_not be_valid }
end

describe "when password doesn't match confirmation" do
  before { @user.password_confirmation = "mismatch" }
  it { should_not be_valid }
end

describe "when password confirmation is nil" do
  before { @user.password_confirmation = nil }
  it { should_not be_valid }
end

describe "with a password that's too short" do
    before { @user.password = @user.password_confirmation = "a" * 5 }
    it { should be_invalid }
end

describe "return value of authenticate method" do
    before { @user.save }
    let(:found_user) { User.find_by_email(@user.email) }

    describe "with valid password" do
      it { should == found_user.authenticate(@user.password) }
    end

    describe "with invalid password" do
      let(:user_for_invalid_password) { found_user.authenticate("invalid") }

      it { should_not == user_for_invalid_password }
      specify { user_for_invalid_password.should be_false }
    end
end
end