require "test_helper"

class UserTest < ActiveSupport::TestCase
 def setup
  @user = User.new(name: "Test User", email: "test@example.com")
 end

 test "should be valid" do
  assert @user.valid?
 end

 test "name should be present" do
  @user.name = "      "
  assert_not @user.valid?
 end

 test "email should be present" do 
  @user.email = "   "
  assert_not @user.valid?

 end

  test "name can not be to long" do
    @user.name = "a" * 61
    assert_not @user.valid?
  end

  test "email can not be to long" do 
    @user.email = "a" * 255 + "@example.com"
    assert_not @user.valid?
  end

  test "email validation should accept valid addresses" do 
    valid_addresses = %w[tony@example.com john@test.com mary@new.com tony.smith@example.com tony+smith@example.com]
     valid_addresses.each do |valid_address|
      @user.email = valid_address
      assert @user.valid?, "#{valid_address.inspect} should be valid"
     end
     end

       test "email validation should not accept invalid email addresses" do 
        invalid_addresses = %w[test_at_test.com mary@new tony.smith.examplecom tony+smith+example.com]
        invalid_addresses.each do |invalid_address|
        @user.email = invalid_address
        assert @user.valid?, "#{invalid_address.inspect} should be invalid"
     end
     end

     test "email address should be unique" do 
      duplicate_user = @user.dup
      @user.save
      assert_not duplicate_user.valid?
     end

  end






