require 'rails_helper'

RSpec.describe "accounts/new", type: :view do
  before(:each) do
    assign(:account, Account.new(
      :firstname => "MyString",
      :lastname => "MyString",
      :email => "MyString"
    ))
  end

  it "renders new account form" do
    render

    assert_select "form[action=?][method=?]", accounts_path, "post" do

      assert_select "input[name=?]", "account[firstname]"

      assert_select "input[name=?]", "account[lastname]"

      assert_select "input[name=?]", "account[email]"
    end
  end
end
