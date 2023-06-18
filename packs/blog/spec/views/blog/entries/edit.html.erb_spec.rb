require 'rails_helper'

RSpec.describe "blog/entries/edit", type: :view do
  let(:blog_entry) {
    Blog::Entry.create!(
      title: "MyString",
      content: "MyText"
    )
  }

  before(:each) do
    assign(:blog_entry, blog_entry)
  end

  it "renders the edit blog_entry form" do
    render

    assert_select "form[action=?][method=?]", blog_entry_path(blog_entry), "post" do

      assert_select "input[name=?]", "blog_entry[title]"

      assert_select "textarea[name=?]", "blog_entry[content]"
    end
  end
end
