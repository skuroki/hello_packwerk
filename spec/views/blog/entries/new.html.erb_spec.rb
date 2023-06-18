require 'rails_helper'

RSpec.describe "blog/entries/new", type: :view do
  before(:each) do
    assign(:blog_entry, Blog::Entry.new(
      title: "MyString",
      content: "MyText"
    ))
  end

  it "renders new blog_entry form" do
    render

    assert_select "form[action=?][method=?]", blog_entries_path, "post" do

      assert_select "input[name=?]", "blog_entry[title]"

      assert_select "textarea[name=?]", "blog_entry[content]"
    end
  end
end
