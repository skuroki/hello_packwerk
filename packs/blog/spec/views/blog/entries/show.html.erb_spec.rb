require 'rails_helper'

RSpec.describe "blog/entries/show", type: :view do
  before(:each) do
    assign(:blog_entry, Blog::Entry.create!(
      title: "Title",
      content: "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
  end
end
